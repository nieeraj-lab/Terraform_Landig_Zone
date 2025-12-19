
resource "azurerm_mssql_server" "sql_server" {
  for_each                      = var.sql_servers
  name                          = each.value.name                #required
  resource_group_name           = each.value.resource_group_name #required
  location                      = each.value.location            #required
  version                       = each.value.version             #required
  administrator_login           = each.value.administrator_login
  administrator_login_password  = each.value.administrator_login_password
  minimum_tls_version           = each.value.minimum_tls_version
  public_network_access_enabled = each.value.public_network_access_enabled
  tags                          = each.value.tags
}

