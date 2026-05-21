# 2026-05-17T14:37:11.991207200
import vitis

client = vitis.create_client()
client.set_workspace(path="AudioFilters")

vitis.dispose()

