# 2026-05-17T14:47:24.710553700
import vitis

client = vitis.create_client()
client.set_workspace(path="AudioFilters")

comp = client.get_component(name="af_app")
comp.build()

comp.build()

comp.build()

status = comp.clean()

comp.build()

status = comp.clean()

comp.build()

vitis.dispose()

