managed_instance_object_main           = {
       name                            = "testmanagedinstance"         
       sku_name                        = "GP_Gen5"
       sku_tier                        = "GeneralPurpose"
       adminUsername                   = "testadmin"
       vNetResourceGroup               = "rg_neu_terraform"
       vNetName                        = "vnet_terraform"
       subnetName                      = "managed_instance"
       storagesize                     = "256"
       vcores                          = "8"
       licensetype                     = "LicenseIncluded"
       hardwarefamily                  = "Gen5"
       dns                             = " "
       collation                       = "SQL_Latin1_General_CP1_CI_AS"
       proxyoveride                    = "Proxy"
       publicDataEndpointEnabled       =  false
       timezoneid                      = "UTC"
}

adminPassword = "changemepls123"
