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
