vms ={
    master-kube={

        vnet_name           = "kube-vnet"
        subnet_name         = "kube-subnet"
        resource_group_name = "RG-habeeb"
        location            = "UAE North"
        size                = "Standard_B2s"
        admin_username      = "ubuntu"
        publisher           = "Canonical"
        offer               = "0001-com-ubuntu-server-jammy"
        sku                 = "22_04-lts"
    }
    
}