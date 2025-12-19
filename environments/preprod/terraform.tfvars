rgs = {
  rg1={
    name= "jharkhand"
    location = "centralindia"
    managed_by = "terraform"
    tags= {
        owner = "Neo"
    }
  }
   rg2={
    name= "Bihar"
    location = "centralindia"
    managed_by = "terraform"
    tags= {
        owner = "Nitish"
    }
  }
}
public-IPs = {
  "pip1" = {
    name                = "public-ip-frontend"
    resource_group_name = "rg-neeraj"
    location            = "centralindia"
    allocation_method   = "Static"
    sku                 = "Standard"
    tags = {
      owner = "Neo"
      label = "frontend"
    }
  }

  "pip2" = {
    name                = "public-ip-backend"
    resource_group_name = "rg-neeraj"
    location            = "centralindia"
    allocation_method   = "Static"
    tags = {
      owner = "trinity"
      label = "backend"
    }
  }

}
vnets = {
  vnet1 = {
    name                = "vnet-todoapp"
    resource_group_name = "rg-neo"
    location            = "centralindia"
    address_space       = ["10.0.0.0/16"]
    dns_servers         = ["10.0.0.4", "10.0.0.5"]
    tags = {
      environment = "Production"
      owner       = "neeraj"
    }
  }
}

subnets = {
  subnet1 = {
    name             = "frontend-subnet"
    address_prefixes = ["10.0.1.0/24"]
  }
  subnet2 = {
    name             = "backend-subnet"
    address_prefixes = ["10.0.2.0/24"]
  }
}
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

sql-databases = {
  database1 = {
    name         = "sql-database-nee7raj"
    collation    = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = 2
    sku_name     = "S0"
    enclave_type = "VBS"
    tags = {
      owner = "GOI"
    }
  }
}
   