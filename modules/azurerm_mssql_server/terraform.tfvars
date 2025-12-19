sql_servers = {
  sql_server1 = {
    name                          = "my-mssql-server-neeraj"
    resource_group_name           = "jharkhand"
    location                      = "centralindia"
    version                       = "12.0"
    administrator_login           = "Neeraj"
    administrator_login_password  = "My$tr0ngP@ssw0rd!99"
    minimum_tls_version           = "1.2"
    public_network_access_enabled = true
    tags = {
      environment = "prod"
    }
  }
}
