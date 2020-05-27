
resource "azurerm_network_security_group" "general_nsg" {
  name                = var.nsg_name_mi
  location                      = local.resource_groups.managed_instance.location
  resource_group_name           = local.resource_groups.managed_instance.name
  security_rule {
    access                                     = "Allow"
    description                                = "Public Endpoint"
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "3342"
    # destination_port_ranges                    = []
    direction                             = "Inbound"
    name                                  = "allow_public_endpoint_inbound"
    priority                              = 1300
    protocol                              = "Tcp"
    source_address_prefix                 = "*"
    source_address_prefixes               = []
    source_application_security_group_ids = []
    source_port_range                     = "*"
    source_port_ranges                    = []
  }
  security_rule {
    access                                     = "Allow"
    description                                = "Allow inbound management traffic"
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    # destination_port_range                     = "*"
    destination_port_ranges               = ["9000", "9003", "1438", "1440", "1452"]
    direction                             = "Inbound"
    name                                  = "allow_management_inbound"
    priority                              = 100
    protocol                              = "Tcp"
    source_address_prefix                 = "*"
    source_address_prefixes               = []
    source_application_security_group_ids = []
    source_port_range                     = "*"
    source_port_ranges                    = []
  }
  security_rule {
    access                                     = "Allow"
    description                                = "Allow inbound traffic inside the subnet"
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "*"
    # destination_port_ranges                    = []
    direction                             = "Inbound"
    name                                  = "allow_misubnet_inbound"
    priority                              = 200
    protocol                              = "*"
    source_address_prefix                 = var.mi_Subnet_Prefix
    source_address_prefixes               = []
    source_application_security_group_ids = []
    source_port_range                     = "*"
    source_port_ranges                    = []
  }
  
  security_rule {
    access                                     = "Allow"
    description                                = "Allow health probe"
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "*"
    # destination_port_ranges                    = []
    direction                             = "Inbound"
    name                                  = "allow_health_probe_inbound"
    priority                              = 300
    protocol                              = "*"
    source_address_prefix                 = "AzureLoadBalancer"
    source_address_prefixes               = []
    source_application_security_group_ids = []
    source_port_range                     = "*"
    source_port_ranges                    = []
  }
  security_rule {
    access                                     = "Allow"
    description                                = "Allow access to data"
    destination_address_prefixes               = []
    destination_address_prefix                 = "*"
    destination_application_security_group_ids = []
    destination_port_range                     = "1433"
    # destination_port_ranges                    = []
    direction                             = "Inbound"
    name                                  = "allow_tds_inbound"
    priority                              = 1000
    protocol                              = "Tcp"
    source_address_prefix                 = "VirtualNetwork"
    source_address_prefixes               = []
    source_application_security_group_ids = []
    source_port_range                     = "*"
    source_port_ranges                    = []
  }
  security_rule {
    access                                     = "Deny"
    description                                = "Deny all other inbound traffic"
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "*"
    # destination_port_ranges                    = []
    direction                             = "Inbound"
    name                                  = "deny_all_inbound"
    protocol                              = "*"
    priority                              = 4096
    source_address_prefix                 = "*"
    source_address_prefixes               = []
    source_application_security_group_ids = []
    source_port_range                     = "*"
    source_port_ranges                    = []
  }
  security_rule {
    access                                     = "Allow"
    description                                = "Allow outbound management traffic"
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    # destination_port_range                     = "*"
    destination_port_ranges               = ["443", "12000"]
    direction                             = "Outbound"
    name                                  = "allow_management_outbound"
    protocol                              = "Tcp"
    priority                              = 100
    source_address_prefix                 = "*"
    source_address_prefixes               = []
    source_application_security_group_ids = []
    source_port_range                     = "*"
    source_port_ranges                    = []
  }
  security_rule {
    access                                     = "Allow"
    description                                = "Allow outbound traffic inside the subnet"
    destination_address_prefix                 = var.mi_Subnet_Prefix
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "*"
    # destination_port_ranges                    = []
    direction                             = "Outbound"
    name                                  = "allow_misubnet_outbound"
    protocol                              = "*"
    priority                              = 200
    source_address_prefix                 = "*"
    source_address_prefixes               = []
    source_application_security_group_ids = []
    source_port_range                     = "*"
    source_port_ranges                    = []
  }
  security_rule {
    access                                     = "Deny"
    description                                = "Deny all other outbound traffic"
    destination_address_prefix                 = "*"
    destination_address_prefixes               = []
    destination_application_security_group_ids = []
    destination_port_range                     = "*"
    # destination_port_ranges                    = []
    direction                             = "Outbound"
    name                                  = "deny_all_outbound"
    protocol                              = "*"
    priority                              = 4096
    source_address_prefix                 = "*"
    source_address_prefixes               = []
    source_application_security_group_ids = []
    source_port_range                     = "*"
    source_port_ranges                    = []
  }
}
