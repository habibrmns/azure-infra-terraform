variable "vnets" {
  description = "A map of Virtual Networks to create."
  type = map(object({
    vnet_name               = string
    location                = string
    resource_group_name     = string
    address_space           = list(string)
    dns_servers             = list(string)
    tags                    = map(string)
    nsg_name                = string
    subnets                 = map(object({
      address_prefixes = list(string)
    }))
    nsg_rules               = list(object({
      name                       = string
      priority                   = number
      direction                  = string
      access                     = string
      protocol                   = string
      source_port_range          = string
      destination_port_range     = string
      source_address_prefix      = string
      destination_address_prefix = string
    })) 
    }))
}