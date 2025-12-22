module "vnet" {
  source = "./modules/vnet"
  
    for_each = var.vnets
    vnet_name               = each.value.vnet_name
    location                = each.value.location
    resource_group_name     = each.value.resource_group_name
    address_space           = each.value.address_space
    dns_servers             = lookup(each.value, "dns_servers", [])
    tags                    = lookup(each.value, "tags", {})
    nsg_name                = each.value.nsg_name
    subnets                 = each.value.subnets
    nsg_rules               = lookup(each.value, "nsg_rules", [])

}