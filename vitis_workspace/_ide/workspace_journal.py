# 2026-05-11T15:10:00.117725700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.get_component(name="audio_filters_platform")
status = platform.build()

comp = client.get_component(name="audio_filters_app")
comp.build()

status = platform.build()

comp.build()

status = platform.update_hw(hw_design = "$COMPONENT_LOCATION/../../audio_filters_hw.xsa")

