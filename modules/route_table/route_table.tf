resource "azurerm_route_table" {
  for_each =  route_table_object
    name                               = "${module.names.standard["route-table"]}-${each.value.name}"
    location                           = var.location
    resource_group_name                = var.resource_group_name
    tags                               = local.tags
    disable_bgp_route_propagation      = each.value.disable_bgp_route_propagation

    dynamic "route" {
          for_each                       = each.value.route
        content {
                name                   = route.value.name
                address_prefix         = route.value.prefix
                next_hop_type          = route.value.next_hop_type
                next_hop_in_ip_address = contains(keys(route.value), "next_hop_in_ip_address") ? route.value.next_hop_in_ip_address: null
                }
    }
}

resource "azurerm_subnet_route_table_association" "subnet_link" {
    for_each                           = var.subnet_ids_map

    subnet_id                          = var.subnet_ids_map[each.key].id
    route_table_id                     = azurerm_route_table.route_table.id
}


# resource "azurerm_route_table" "route_table" {
#     name                               = "${module.names.standard["route-table"]}-${var.route_table_name}"
#     location                           = var.location
#     resource_group_name                = var.resource_group_name
#     tags                               = local.tags
#     disable_bgp_route_propagation      = var.route_table.disable_bgp_route_propagation

#     dynamic "route" {
#         for_each                       = var.route_table.route_entries
#         content {
#                 name                   = route.value.name
#                 address_prefix         = route.value.prefix
#                 next_hop_type          = route.value.next_hop_type
#                 next_hop_in_ip_address = contains(keys(route.value), "next_hop_in_ip_address") ? route.value.next_hop_in_ip_address: null
#                 }
#     }
# }

# resource "azurerm_subnet_route_table_association" "subnet_link" {
#     for_each                           = var.subnet_ids_map

#     subnet_id                          = var.subnet_ids_map[each.key].id
#     route_table_id                     = azurerm_route_table.route_table.id
# }




