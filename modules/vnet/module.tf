terraform {
  required_version = ">= 0.12"
}
 
provider "azurerm" {
  version = ">= 2.0"
  features {}
}

resource "azurerm_virtual_network" "vnet" {
    for_each = var.networking_object
    name                      = each.value.vnet.name
    location                  = var.location
    resource_group_name       = var.virtual_network_rg
    address_space             = each.value.vnet.address_space

    dns_servers               = lookup(each.value.vnet, "dns", null)

    dynamic "ddos_protection_plan" {
        for_each              = lookup(each.value.vnet, "enable_ddos_std", false) == true ? [1] : []

        content {
            id                = each.value.vnet.ddos_id
            enable            = each.value.vnet.vnet.enable_ddos_std
        }
    }

    dynamic "subnet"  {
     for_each = each.value.subnet 
       content {
          name           = subnet.value.name
          address_prefix = subnet.value.cidr
       }
     }
  }