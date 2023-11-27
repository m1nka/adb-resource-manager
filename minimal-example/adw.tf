
resource "oci_database_autonomous_database" "example_adb" {
  compartment_id        = var.compartment_ocid
  db_name               = var.adb_display_name
  admin_password        = var.admin_password
  cpu_core_count        = var.cpu_core_count
  data_storage_size_in_tbs = var.data_storage_size_in_tbs
  display_name          = var.adb_display_name
  license_model         = var.license_model
  db_workload           = var.db_workload
  subnet_id             = var.subnet_ocid
  nsg_ids               = var.nsg_ocids
  is_auto_scaling_enabled = true
  is_dedicated          = false
  is_free_tier          = false
}

output "autonomous_database_connection_strings" {
  value = oci_database_autonomous_database.example_adb.connection_strings
}

output "autonomous_database_password" {
  value     = oci_database_autonomous_database.example_adb.admin_password
  sensitive = true
}
