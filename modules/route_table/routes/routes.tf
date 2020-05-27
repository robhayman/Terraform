resource "azurerm_route" "v_route" {
    for_each               = var.route_table

    name                   = each.value.name
    resource_group_name    = var.resource_group
    route_table_name       = var.route_table_name
    address_prefix         = each.value.address_prefix
    next_hop_type          = var.next_hop_type
    next_hop_in_ip_address = var.next_hop_in_ip_address
}