variable "resource_group_name" {
    description = "(Required) Name of resource group for Managed instance"  
}

variable "location"           {
    description = "(Required) location of Managed instance"
}

variable "managed_instance_object" {
    description = "(Required) Object defining managed instance"
   
}

variable "adminPassword" {
    description = "(Required) Administrator password"
}

variable "rt_name_mi" {
    description = "name for MI route table"
}

variable "mi_Subnet_Prefix" {
    description = "subnet prefix for MI route table"
}

variable "nsg_name_mi" {
    description = "NSG for MI"
}



