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
