variable "vnet_name" {
    description = "The name of the Virtual Network."
    type        = string
  
}

variable "subnet_name" {
    description = "The name of the Subnet within the Virtual Network."
    type        = string
  
}

variable "resource_group_name" {
    description = "The name of the Resource Group."
    type        = string
  }

variable "location" {
    description = "The Azure region where the Virtual Machine will be created."
    type        = string
    }

variable "vm_name" {
  type = string
}

variable "size" {
  type = string
}

variable "admin_username" {
  type = string

}

variable "ssh_public_key" {
  type = string
}

variable "publisher" {
  type = string
}

variable "offer" {
  type = string
}

variable "sku" {
  type = string
}

variable "public_ip" {
  description = "Whether to attach a public IP to the VM"
  type        = bool
}

variable "os_disk_type" {
  description = "The type of OS Disk to use for the Virtual Machine."
  type        = string
}

variable "disk_size" {
  description = "The size of the OS Disk in GB."
  type        = number
}

variable "data_disks" {
  description = "Optional list of data disks"
  type = list(object({
    name    = string
    size_gb = number
    type    = string
    lun     = number
  }))
}

variable "tags" {
    description = "A map of tags to assign to the resources."
    type        = map(string)
    default     = {}
  
}