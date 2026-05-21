# 2026-05-02T20:57:16.530997700
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.get_component(name="audio_filters_platform")
status = platform.build()

comp = client.get_component(name="audio_filters_app")
comp.build()

status = platform.build()

comp.build()

vitis.dispose()

