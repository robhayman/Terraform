locals {
  resource_groups         = {
    managed_instance         = {
      name                = var.resource_group_name
      location            = var.location
    }
}