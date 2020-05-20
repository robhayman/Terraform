# variable "name" {
#     description = "name of Application Gateway  being deployed"
# }

variable "resource_group_name" {
    description = "The resource group to which the Application Gateway is being deployed"
}


variable "location" {
    description = "The geo location to which the Application Gateway is being deployed"
}

variable "subnet_id" {
    description = "The subnet to  to which the Application Gateway is being deployed"
    default = "/subscriptions/461377a7-433d-4980-9506-c35defb10a49/resourceGroups/rg_neu_terraform/providers/Microsoft.Network/virtualNetworks/test-gw-vnet/subnets/GatewaySubnet"
}

variable "appgw_object" {
    description = "Application Gateway Setting"
}

variable "app_object" {
    description = "Application Gateway, Application Setting"
}