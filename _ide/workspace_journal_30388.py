# 2026-05-17T12:39:03.998742300
import vitis

client = vitis.create_client()
client.set_workspace(path="AudioFilters")

platform = client.get_component(name="af_platform")
status = platform.build()

comp = client.get_component(name="af_app - Copy")
comp.build()

comp = client.get_component(name="af_app")
comp.build()

comp.build()

comp.build()

comp.build()

