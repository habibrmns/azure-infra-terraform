vms ={
    kube-bastion={

        vnet_name           = "kube-vnet"
        subnet_name         = "vm-subnet"
        resource_group_name = "RG-habeeb"
        location            = "UAE North"
        size                = "Standard_B2s"
        admin_username      = "ubuntu"
        publisher           = "Canonical"
        offer               = "0001-com-ubuntu-server-jammy"
        sku                 = "22_04-lts"
        public_ip           = true   
        ssh_public_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDTs2WS6YivMvre1uMTJGtv5oCrmGYDyLe0vYn6froqgfDAHnsnnQ1/y77gRwt3wrwkUalJylxyz9aeQonOJdqI1NRInUReolLTl4u/fEU2/BocTxeiTupRhUFQHLm8qG64k3TABpQ1HCZQpe1fd2tUu80+HE+Rodf30UtGOX/1Y/TSKwDAB9Po/C/kJTrI3dJ8qvwz0tYLr/tIMeH+CWarZzYpjE0nPRWDLI5iC3Or6pGFV5y2+U34zjpF6SwBtbmuCeNOIAcgb+IgZrnaAzaiMj4x7Dw1bP6a3p76wS+56P/YRkkD4n79o1nEaxldT/mKj8fFAw+/4G2Qxzdnag8IyzlqNklGATcKH7bp6/Cr0O6u6g+8tYJdO1giPxJT/tio5QZra5s9CXvKa424S35AYkTV2/jwbFWyY5WYFa5ucXqpmF1RT+bXu95DjHADfmJnP1EpNw2rqWoL58NfdbQX6TL/OHIzxVws7WAcJzYiCy2iOqZTn4d9nyBnL/72KLvVI4pBZCpVee+owOM+fXJp0F4SCkPy1+Qvu4Gy0KRjGwMZOH7hY/et6AVS2DvGGwziAlTdVsQUiORX0BSYQnCLj2436zkn6xIhY2Qqs5vU0mMoLdciYPwN2+GKuxx7TVBb9DgDzwhVCKzJ9CGCllyjxyM4Mb5HUd3GfCJi2YqhCQ=="
        os_disk_type        = "StandardSSD_LRS"
        disk_size           = 50
        tags = {
            Creator = "Habeeb"
            Project     = "KubernetesCluster"
        }
    },
        kube-master={

        vnet_name           = "kube-vnet"
        subnet_name         = "kube-subnet"
        resource_group_name = "RG-habeeb"
        location            = "UAE North"
        size                = "Standard_B2s"
        admin_username      = "ubuntu"
        publisher           = "Canonical"
        offer               = "0001-com-ubuntu-server-jammy"
        sku                 = "22_04-lts"   
        ssh_public_key      = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDTs2WS6YivMvre1uMTJGtv5oCrmGYDyLe0vYn6froqgfDAHnsnnQ1/y77gRwt3wrwkUalJylxyz9aeQonOJdqI1NRInUReolLTl4u/fEU2/BocTxeiTupRhUFQHLm8qG64k3TABpQ1HCZQpe1fd2tUu80+HE+Rodf30UtGOX/1Y/TSKwDAB9Po/C/kJTrI3dJ8qvwz0tYLr/tIMeH+CWarZzYpjE0nPRWDLI5iC3Or6pGFV5y2+U34zjpF6SwBtbmuCeNOIAcgb+IgZrnaAzaiMj4x7Dw1bP6a3p76wS+56P/YRkkD4n79o1nEaxldT/mKj8fFAw+/4G2Qxzdnag8IyzlqNklGATcKH7bp6/Cr0O6u6g+8tYJdO1giPxJT/tio5QZra5s9CXvKa424S35AYkTV2/jwbFWyY5WYFa5ucXqpmF1RT+bXu95DjHADfmJnP1EpNw2rqWoL58NfdbQX6TL/OHIzxVws7WAcJzYiCy2iOqZTn4d9nyBnL/72KLvVI4pBZCpVee+owOM+fXJp0F4SCkPy1+Qvu4Gy0KRjGwMZOH7hY/et6AVS2DvGGwziAlTdVsQUiORX0BSYQnCLj2436zkn6xIhY2Qqs5vU0mMoLdciYPwN2+GKuxx7TVBb9DgDzwhVCKzJ9CGCllyjxyM4Mb5HUd3GfCJi2YqhCQ=="
        os_disk_type        = "StandardSSD_LRS"
        disk_size           = 50
        tags = {
            Creator = "Habeeb"
            Project     = "KubernetesCluster"
        }
    },
}