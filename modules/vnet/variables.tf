variable "networking_object" {
    description = "(Required) configuration object describing the virtnaul netowrks inthe lz, as described in README"
}

variable "location" {
    description = "location of resources"
    default = "northeurope"
}

variable "virtual_network_rg" {
    description = "(Required) configuration object describing the virtnaul netowrks inthe lz, as described in README"
    default = "rg_neu_terraform"
}
