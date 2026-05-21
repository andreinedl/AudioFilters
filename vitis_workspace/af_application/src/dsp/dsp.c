#include "dsp.h"
#include <stdint.h>

#define SAMPLE_RATE         48000
#define MAX_24BIT_VAL       ((int32_t)((1 << 23) - 1)) // 8,388,607

// IIR filters
#define LOW_PASS_SHIFT      2   
#define HIGH_PASS_SHIFT     5  
#define DISTORTION_GAIN     2   

// Echo
#define ECHO_DELAY_MS       300
#define ECHO_FRAMES         ((SAMPLE_RATE * ECHO_DELAY_MS) / 1000) 
#define ECHO_BUFFER_SIZE    (ECHO_FRAMES * 2)
#define ECHO_FEEDBACK_SHIFT 1  

// Reverb
#define REVERB_SIZE         (1920 * 2) 

// Filters
static int32_t lp_L = 0, lp_R = 0;
static int32_t hp_L = 0, hp_R = 0;

static int32_t kar_lp_L = 0, kar_lp_R = 0;
static int32_t kar_hp_L = 0, kar_hp_R = 0;

static int32_t echo_buffer[ECHO_BUFFER_SIZE] = {0};
static int     echo_index = 0;

static int32_t rev_buf[REVERB_SIZE] = {0};
static int     rev_idx = 0;
static int32_t rev_lp_L = 0, rev_lp_R = 0;

static int     eight_bit_cnt = 0;
static int32_t eight_bit_L = 0, eight_bit_R = 0;

// 24 bit saturation
static inline int32_t saturate_24bit(int64_t sample) {
    if (sample >  MAX_24BIT_VAL) return  MAX_24BIT_VAL;
    if (sample < -MAX_24BIT_VAL) return -MAX_24BIT_VAL;
    return (int32_t)sample;
}

void processAudioFrame(u32 buffer_addr, int num_bytes, FilterType active_filter) {
    
    int32_t *audio_buffer = (int32_t *)buffer_addr;
    int total_samples = num_bytes / (int)sizeof(int32_t);

    // sign extension
    for (int i = 0; i < total_samples; i += 2) {
        int32_t raw_L = (int32_t)((uint32_t)audio_buffer[i] << 8) >> 8;
        int32_t raw_R = (int32_t)((uint32_t)audio_buffer[i + 1] << 8) >> 8; 
        
        audio_buffer[i]     = raw_L;
        audio_buffer[i + 1] = raw_R;
    }

    // Effects
    if (active_filter != FILTER_NONE) {
        switch (active_filter) {

            // y[n] = y[n-1] + alpha * (x[n] - y[n-1]) - where alpha = LOW_PASS_SHIFT in our case
            case FILTER_LOW_PASS:
                for (int i = 0; i < total_samples; i += 2) {
                    lp_L += (audio_buffer[i]     - lp_L) >> LOW_PASS_SHIFT;
                    lp_R += (audio_buffer[i + 1] - lp_R) >> LOW_PASS_SHIFT;
                    audio_buffer[i]     = lp_L;
                    audio_buffer[i + 1] = lp_R;
                }
                break;

            // y[n] = alpha * y[n-1] + alpha * (x[n] - x[n-1])
            case FILTER_HIGH_PASS:
                for (int i = 0; i < total_samples; i += 2) {
                    int32_t original_L = audio_buffer[i];
                    int32_t original_R = audio_buffer[i + 1];

                    hp_L += (original_L - hp_L) >> HIGH_PASS_SHIFT;
                    hp_R += (original_R - hp_R) >> HIGH_PASS_SHIFT;

                    audio_buffer[i]     = original_L - hp_L;
                    audio_buffer[i + 1] = original_R - hp_R;
                }
                break;

            case FILTER_DISTORTION:
                for (int i = 0; i < total_samples; i++) {
                    int64_t amplified_sample = (int64_t)audio_buffer[i] << DISTORTION_GAIN;
                    audio_buffer[i] = saturate_24bit(amplified_sample);
                }
                break;

            case FILTER_ECHO:
                for (int i = 0; i < total_samples; i += 2) {
                    int32_t delayed_L = echo_buffer[echo_index];
                    int32_t delayed_R = echo_buffer[echo_index + 1];

                    int32_t feedback_L = delayed_L >> ECHO_FEEDBACK_SHIFT;
                    int32_t feedback_R = delayed_R >> ECHO_FEEDBACK_SHIFT;

                    echo_buffer[echo_index]     = saturate_24bit((int64_t)audio_buffer[i]     + feedback_L);
                    echo_buffer[echo_index + 1] = saturate_24bit((int64_t)audio_buffer[i + 1] + feedback_R);

                    audio_buffer[i]     = echo_buffer[echo_index];
                    audio_buffer[i + 1] = echo_buffer[echo_index + 1];

                    echo_index += 2;
                    if (echo_index >= ECHO_BUFFER_SIZE) echo_index = 0;
                }
                break;

            case FILTER_KARAOKE: 
                for (int i = 0; i < total_samples; i += 2) {
                    int32_t xL = audio_buffer[i];
                    int32_t xR = audio_buffer[i + 1];

                    kar_lp_L += (xL - kar_lp_L) >> 2;
                    kar_lp_R += (xR - kar_lp_R) >> 2;
            
                    kar_hp_L += (kar_lp_L - kar_hp_L) >> 5;  
                    kar_hp_R += (kar_lp_R - kar_hp_R) >> 5;
            
                    int32_t midL = kar_lp_L - kar_hp_L; 
                    int32_t midR = kar_lp_R - kar_hp_R; 
            
                    int32_t vocal_est = saturate_24bit(((int64_t)midL + midR) >> 1);
            
                    audio_buffer[i]     = saturate_24bit((int64_t)xL - vocal_est);
                    audio_buffer[i + 1] = saturate_24bit((int64_t)xR - vocal_est);
                }
                break;

            case FILTER_CH_SWAP:
                for (int i = 0; i < total_samples; i += 2) {
                    int32_t tmp = audio_buffer[i];
                    audio_buffer[i]     = audio_buffer[i + 1];
                    audio_buffer[i + 1] = tmp;
                }
                break;

            case FILTER_8_BIT:
                for (int i = 0; i < total_samples; i += 2) {
                    eight_bit_cnt++;
                    
                    if (eight_bit_cnt > 8) {
                        eight_bit_cnt = 0;
                        eight_bit_L = audio_buffer[i]     & 0xFFFF0000;
                        eight_bit_R = audio_buffer[i + 1] & 0xFFFF0000;
                    }

                    audio_buffer[i]     = eight_bit_L;
                    audio_buffer[i + 1] = eight_bit_R;
                }
                break;

            case FILTER_REVERB:
                for (int i = 0; i < total_samples; i += 2) {
                    int32_t wall_L = rev_buf[rev_idx];
                    int32_t wall_R = rev_buf[rev_idx + 1];

                    rev_lp_L += (wall_L - rev_lp_L) >> 1;
                    rev_lp_R += (wall_R - rev_lp_R) >> 1;

                    int32_t feedback_L = rev_lp_L - (rev_lp_L >> 2);
                    int32_t feedback_R = rev_lp_R - (rev_lp_R >> 2);

                    rev_buf[rev_idx]     = saturate_24bit((int64_t)audio_buffer[i]     + feedback_L);
                    rev_buf[rev_idx + 1] = saturate_24bit((int64_t)audio_buffer[i + 1] + feedback_R);

                    audio_buffer[i]     = (audio_buffer[i]     >> 1) + (wall_L >> 1);
                    audio_buffer[i + 1] = (audio_buffer[i + 1] >> 1) + (wall_R >> 1);

                    rev_idx += 2;
                    if (rev_idx >= REVERB_SIZE) rev_idx = 0;
                }
                break;

            default:
                break;
        }
    }

    // back to 24 bits
    for (int i = 0; i < total_samples; i++) {
        audio_buffer[i] &= 0x00FFFFFF;
    }
}