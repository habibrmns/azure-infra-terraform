vnets = {
  kube-vnet = {
    vnet_name           = "kube-vnet"
    location            = "UAE North"
    resource_group_name = "RG-habeeb"
    address_space       = ["10.0.0.0/16"]

    subnets = {
      kube-subnet = {
        address_prefixes = ["10.0.0.0/22"]
      }
    }

    nsg_name = "kube-nsg"

    nsg_rules = [
      {
        name                       = "Allow-SSH"
        priority                   = 100
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      }
    ]

    dns_servers = []
    tags = {
      env = "dev"
      Creator = "habeeb"
    }
  }
}
