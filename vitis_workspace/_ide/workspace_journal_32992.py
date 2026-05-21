# 2026-05-02T20:24:36.216142800
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.get_component(name="audio_filters_platform")
status = platform.build()

comp = client.get_component(name="audio_filters_app")
comp.build()

vitis.dispose()

vitis.dispose()

