module "vm" {
    source = "../modules/vm"
    for_each = var.vms
    vnet_name            = each.value.vnet_name
    subnet_name          = each.value.subnet_name
    resource_group_name  = each.value.resource_group_name
    location             = each.value.location
    vm_name              = each.key
    size                 = each.value.size
    admin_username       = each.value.admin_username
    ssh_public_key       = each.value.ssh_public_key
    publisher            = each.value.publisher
    offer                = each.value.offer
    sku                  = each.value.sku
    public_ip            = lookup(each.value, "public_ip", false)
}