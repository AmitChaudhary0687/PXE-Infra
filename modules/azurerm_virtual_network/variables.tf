variable "vnet_details" {
  type = map(object({
    vnet_name           = string
    location            = string
    resource_group_name = string
    address_space       = list(string)

    subnets = map(object({
      name             = string
      address_prefixes = list(string)
    }))
  }))
}
