variable "vnet_name" {
    description = "The name of the Virtual Network."
    type        = string
  
}

variable "location" {
    description = "The Azure region where the Virtual Network will be created."
    type        = string
  
}

variable "resource_group_name" {
    description = "The name of the Resource Group in which to create the Virtual Network."
    type        = string
  
}

variable "address_space" {
    description = "The address space that is used by the Virtual Network."
    type        = list(string)
  
}

variable "dns_servers" {
    description = "A list of DNS server IP addresses."
    type        = list(string)
    default     = []
  
}

variable "tags" {
    description = "A map of tags to assign to the resources."
    type        = map(string)
    default     = {}
  
}

variable "nsg_name" {
    description = "The name of the Network Security Group."
    type        = string
  
}

variable "subnets" {
  description = "Map of subnets to create inside the VNet"
  type = map(object({
    address_prefixes = list(string)
  }))
}



variable "nsg_rules" {
  type = list(object({
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
}
