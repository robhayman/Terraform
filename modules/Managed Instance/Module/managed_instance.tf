resource "azurerm_template_deployment" "managed_instance" {

  name                = var.managed_instance_object.name
  resource_group_name = var.resource_group_name

  template_body       = file(local.arm_filename) 

  parameters = {
        "managedInstanceName"          = var.managed_instance_object.name
        "skuName"                      = var.managed_instance_object.sku_name
        "skuEdition"                   = var.managed_instance_object.sku_tier
        "location"                     = var.location 
        "adminUsername"                = var.managed_instance_object.adminUsername
        "adminPassword"                = var.managed_instance_object.adminPassword
        "vNetResourceGroup"            = var.managed_instance_object.vNetResourceGroup
        "vNetName"                     = var.managed_instance_object.vNetName
        "subnetName"                   = var.managed_instance_object.subnetName
        "storageSizeInGB"              = var.managed_instance_object.storagesize
        "vCores"                       = var.managed_instance_object.vcores
        "licenseType"                  = var.managed_instance_object.licensetype
        "hardwareFamily"               = var.managed_instance_object.hardwarefamily
        "dnsZonePartner"               = var.managed_instance_object.dns
        "collation"                    = var.managed_instance_object.collation
        "proxyOverride"                = var.managed_instance_object.proxyoveride
        "publicDataEndpointEnabled"    = var.managed_instance_object.publicDataEndpointEnabled
        "timezoneId"                   = var.managed_instance_object.timezoneid
  }


  deployment_mode = "Incremental"


}