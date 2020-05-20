module "managed_instance" {
    source              = "./Managed_instance"

    resource_group_name = "rg_neu_terraform_managed_instance"
    location = "northeurope"
    managed_instance_object = var.managed_instance_object_main
}