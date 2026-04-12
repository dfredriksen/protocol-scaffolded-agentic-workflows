FAIL.

Stretch-bar or inventory-verification defects:

- `teaching_modules`, `teaching_module_compare.sh`, and `benchmark_packet_compare.sh` do not exist in the repo inventory and are not proposed as new artifacts inside an existing named repo area.
- `repo_execute.sh` and `repo_backup.sh` do not exist in the repo inventory and are not proposed within an existing named repo area.
- `validation_steps` is not present in the repo inventory.
- Multiple concrete workflow steps depend on these non-inventoried scripts and folders.
- The artifact examples list and plan invent non-existent artifacts, violating the inventory-verification gate and stretch rule against invented workflow surfaces.
