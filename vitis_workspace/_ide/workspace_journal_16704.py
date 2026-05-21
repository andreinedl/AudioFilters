# 2026-05-04T11:55:51.613584900
import vitis

client = vitis.create_client()
client.set_workspace(path="vitis_workspace")

platform = client.get_component(name="audio_filters_platform")
status = platform.build()

comp = client.get_component(name="audio_filters_app")
comp.build()

component = client.get_component(name="audio_filters_app")

lscript = component.get_ld_script(path="D:\Vivado\AudioFilters\vitis_workspace\audio_filters_app\src\lscript.ld")

lscript.regenerate()

status = platform.build()

comp.build()

lscript.regenerate()

lscript.regenerate()

status = platform.build()

comp.build()

status = platform.build()

status = platform.build()

status = platform.build()

comp.build()

lscript.regenerate()

lscript.regenerate()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

lscript.regenerate()

status = platform.build()

comp.build()

vitis.dispose()

