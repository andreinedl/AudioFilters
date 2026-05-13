# 2026-05-13T13:37:37.453842400
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.create_platform_component(name = "audio_filters_platform",hw_design = "$COMPONENT_LOCATION/../../audio_filters_hw.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",compiler = "gcc")

platform = client.get_component(name="audio_filters_platform")
status = platform.build()

