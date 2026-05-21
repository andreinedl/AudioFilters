# 2026-05-17T12:37:46.481865600
import vitis

client = vitis.create_client()
client.set_workspace(path="AudioFilters")

vitis.dispose()

