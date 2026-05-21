#ifndef DSP_H
#define DSP_H

#include "xil_types.h"

typedef enum {
    FILTER_NONE = 0,
    FILTER_LOW_PASS,
    FILTER_HIGH_PASS,
    FILTER_ECHO,
    FILTER_DISTORTION,
    FILTER_KARAOKE,
    FILTER_CH_SWAP,
    FILTER_8_BIT,
    FILTER_REVERB
} FilterType;

void processAudioFrame(u32 buffer_addr, int num_bytes, FilterType active_filter);

#endif