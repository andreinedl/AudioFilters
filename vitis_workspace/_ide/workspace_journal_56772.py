# 2026-05-02T13:53:13.455952900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.create_platform_component(name = "audio_filters_platform",hw_design = "$COMPONENT_LOCATION/../../audio_filters_hw.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",compiler = "gcc")

platform = client.get_component(name="audio_filters_platform")
status = platform.build()

comp = client.create_app_component(name="audio_filters_app",platform = "$COMPONENT_LOCATION/../audio_filters_platform/export/audio_filters_platform/audio_filters_platform.xpfm",domain = "standalone_microblaze_riscv_0")

status = platform.build()

comp = client.get_component(name="audio_filters_app")
comp.build()

vitis.dispose()

