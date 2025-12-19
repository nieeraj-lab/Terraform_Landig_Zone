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
