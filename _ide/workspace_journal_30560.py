# 2026-05-17T14:45:22.175640600
import vitis

client = vitis.create_client()
client.set_workspace(path="AudioFilters")

comp = client.get_component(name="af_app_1s")
comp.build()

vitis.dispose()

