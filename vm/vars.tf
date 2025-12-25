variable "vms" {
  type = map(object({
    vnet_name            = string
    subnet_name          = string
    resource_group_name  = string
    location             = string
    size                 = string
    admin_username       = string
    ssh_public_key       = string
    publisher            = string
    offer                = string
    sku                  = string
    version              = string
  }))
}