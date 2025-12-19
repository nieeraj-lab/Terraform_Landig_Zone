variable "rgs" {
  type = map(object({
    name       = string
    location   = string
    managed_by = optional(string)
    tags       = optional(map(string))
  }))
}
variable "public-IPs" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    allocation_method   = string
    sku                 = optional(string, "Standard")
    tags                = optional(map(string))
  }))
}
variable "vnets" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    address_space       = optional(list(string))
    dns_servers         = optional(list(string))
    tags                = optional(map(string))

  }))

}
variable "subnets" {
    type = map(object({
      name = string
      address_prefixes = optional (list(string))
    }))
}
variable "sql_servers" {
  type = map(object({
    name                          = string
    resource_group_name           = string
    location                      = string
    version                       = string
    administrator_login           = string
    administrator_login_password  = string
    minimum_tls_version           = string
    public_network_access_enabled = optional(bool, true)
    tags                          = map(string)
  }))
}
variable "server_id" {
  type = string
}
variable "sql-databases" {
  type = map(object({
    name         = string
    collation    = optional(string)
    license_type = optional(string)
    max_size_gb  = optional(number)
    sku_name     = optional(string)
    enclave_type = optional(string)

    tags = optional(map(string))
  }))
}
