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