resource "azurerm_resource_group" "rg-name" {
  name     = "rg-neo"
  location = "centralindia"
}
resource "azurerm_virtual_network" "v-net" {
  depends_on          = [azurerm_resource_group.rg-name]
  for_each            = var.vnets
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
  location            = each.value.location
  address_space       = each.value.address_space
  dns_servers         = each.value.dns_servers
  tags                = each.value.tags

  dynamic "subnet" {
    for_each = var.subnets
    content {
      name             = subnet.value.name
      address_prefixes = subnet.value.address_prefixes
    }
  }
}
