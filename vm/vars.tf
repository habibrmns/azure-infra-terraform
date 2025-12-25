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
    public_ip            = optional(bool, false)
    os_disk_type         = string
    disk_size            = number
    data_disks = optional(list(object({
      name    = string
      size_gb = number
      type    = optional(string, "StandardSSD_LRS")
      lun     = number
    })), [])
  }))
}