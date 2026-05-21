# 2026-05-02T12:46:45.427661
import vitis

client = vitis.create_client()
client.set_workspace(path="AudioFilters")

vitis.dispose()

