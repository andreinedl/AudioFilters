# 2026-05-13T13:41:42.798267700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.create_platform_component(name = "audio_filters_platform",hw_design = "$COMPONENT_LOCATION/../../audio_filters_hw.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",compiler = "gcc")

comp = client.create_app_component(name="audio_filters_app",platform = "$COMPONENT_LOCATION/../audio_filters_platform/export/audio_filters_platform/audio_filters_platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

comp = client.get_component(name="audio_filters_app")
comp.build()

platform = client.get_component(name="audio_filters_platform")
status = platform.build()

comp.build()

comp.build()

status = comp.clean()

comp.build()

status = platform.build()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

status = comp.clean()

comp.build()

comp.build()

status = platform.build()

comp.build()

comp.build()

comp.build()

status = comp.clean()

comp.build()

comp.build()

comp.build()

comp.build()

comp.build()

vitis.dispose()

