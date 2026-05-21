# 2026-05-18T09:10:30.664420200
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.create_platform_component(name = "af_platform",hw_design = "$COMPONENT_LOCATION/../../hw_interconnect_intr.xsa",os = "standalone",cpu = "microblaze_riscv_0",domain_name = "standalone_microblaze_riscv_0",compiler = "gcc")

platform = client.get_component(name="af_platform")
status = platform.build()

comp = client.create_app_component(name="af_application",platform = "$COMPONENT_LOCATION/../af_platform/export/af_platform/af_platform.xpfm",domain = "standalone_microblaze_riscv_0",template = "hello_world")

status = platform.build()

comp = client.get_component(name="af_application")
comp.build()

vitis.dispose()

