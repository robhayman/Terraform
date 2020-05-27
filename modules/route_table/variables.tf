variable "ARM_LOCATION" {
    description = "The geo location to which the resources are being deployed"
}

variable "ARM_ENVIRONMENT" {
    description = "The deployment environment acronym to which the resources are being deployed"
}

variable "ARM_SUBSCRIPTION_ID" {
    description = "Azure Subscription for deployment"
}

variable "bgp_propagation" {
    description = "bgp propagation setting"
}

variable "location" {
    description = "location of route table"
}

variable "resource_group_name" {
    description = "URD resource group"
}

variable "route_table" {
    description = "route table object"
}

variable "route_table_name" {
    description = "(Required) route table object to be created"
}

variable "subnet_ids_map" {
    description = "Subnet ids for vnet"
}

variable "tags" {
    description = "(Required) tags for the route table object"
}