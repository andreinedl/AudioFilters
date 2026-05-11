# 2026-05-09T18:34:07.007378400
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.get_component(name="audio_filters_platform")
status = platform.build()

comp = client.get_component(name="audio_filters_app")
comp.build()

client.delete_component(name="audio_filters_app")

client.delete_component(name="componentName")

comp = client.create_app_component(name="audio_filters_app",platform = "$COMPONENT_LOCATION/../audio_filters_platform/export/audio_filters_platform/audio_filters_platform.xpfm",domain = "standalone_microblaze_riscv_0")

client.delete_component(name="audio_filters_app")

comp = client.create_app_component(name="audio_filters_app",platform = "$COMPONENT_LOCATION/../audio_filters_platform/export/audio_filters_platform/audio_filters_platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "empty_application")

status = platform.build()

comp.build()

vitis.dispose()

