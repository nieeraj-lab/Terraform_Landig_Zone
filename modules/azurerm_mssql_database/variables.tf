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
