resource "azurerm_mssql_database" "sql-database" {
    for_each = var.sql-databases
  name         = each.value.name                  # Required
  server_id    = var.server_id # Required
  collation    = each.value.collation
  license_type = each.value.license_type
  max_size_gb  = each.value.max_size_gb
  sku_name     = each.value.sku_name
  enclave_type = each.value.enclave_type
  tags = each.value.tags
}

