module "resource_group" {
  source    = "../../modules/azurerm_resource_group"
  rgs= var.rgs
}
module "networking" {
    source = "../../modules/azurerm_networks"
    vnets = var.vnets
    subnets = var.subnets
}
module "sql_server" {
    source = "../../modules/azurerm_mssql_server"
sql_servers=var.sql_servers

}
module "sql_database" {
    depends_on = [ module.sql_server ]
    source = "../../modules/azurerm_mssql_database"
  sql-databases = var.sql-databases
}
