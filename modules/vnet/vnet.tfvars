networking_object                                = {
  vnet_transit_object                            = {
        vnet                                     = {
            name                                 = "transit"
            address_space                        = ["10.0.0.0/21"] # placeholder: not in design doc
            dns                                  = ["10.0.0.1", "10.0.0.2"] # could be replaced with a lookup for the bind servers
            enable_ddos_std                      = false
            ddos_id                              = "placeholder"
        }
        # specialsubnets                           = {
        #        AzureFirewallSubnet              = {
        #        name                             = "AzureFirewallSubnet"
        #        cidr                             = "10.0.5.0/24" # placeholder  : not in design doc
        #        }
        #        GatewaySubnet                    = {
        #        name                             = "GatewaySubnet"
        #        cidr                             = "10.0.6.0/26" # placeholder : not in design doc
        #        service_endpoints                = []
        #        }
        #  }
        
        subnet                                  = {
            AzureFirewallSubnet              = {
                name                             = "AzureFirewallSubnet"
                cidr                             = "10.0.2.0/24" # placeholder  : not in design doc
                }
            GatewaySubnet                    = {
                name                             = "GatewaySubnet"
                cidr                             = "10.0.1.0/24" # placeholder : not in design doc
                service_endpoints                = []
                }
            sec-fw-internet                      = {
                name                             = "app_snet"
                cidr                             = "10.0.5.0/24"
                service_endpoints                = []
                nsg_inbound                      = [
                    # {"Name", "Priority", "Direction", "Action", "Protocol", "source_port_range", "destination_port_range", "source_address_prefix", "destination_address_prefix" }
                    ["Deny_All_Inbound", 400, "Inbound", "Deny", "*", "*", "*", "*", "]
                ]
                nsg_outbound                     = []
            }
            
            }
        }
        diagnostics                              = {
        log                                      = [
            # ["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
            ["VMProtectionAlerts", true, true, 60],
        ]
        metric                                   = [
                #["Category name",  "Diagnostics Enabled(true/false)", "Retention Enabled(true/false)", Retention_period]
                ["AllMetrics", true, true, 60],
        ]
      }
    }
 }
