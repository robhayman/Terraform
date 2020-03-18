networking_object                                = {
  vnet_transit_object                            = {
        vnet                                     = {
            name                                 = "transit"
            address_space                        = ["10.156.240.0/21"] # placeholder: not in design doc
            dns                                  = ["10.156.240.132", "10.156.240.133"] # could be replaced with a lookup for the bind servers
            enable_ddos_std                      = false
            ddos_id                              = "placeholder"
        }
        # specialsubnets                           = {
        #        AzureFirewallSubnet              = {
        #        name                             = "AzureFirewallSubnet"
        #        cidr                             = "10.156.247.0/26" # placeholder  : not in design doc
        #        }
        #        GatewaySubnet                    = {
        #        name                             = "GatewaySubnet"
        #        cidr                             = "10.156.247.64/26" # placeholder : not in design doc
        #        service_endpoints                = []
        #        }
        #  }
        
        subnet                                  = {
            AzureFirewallSubnet              = {
                name                             = "AzureFirewallSubnet"
                cidr                             = "10.156.247.0/26" # placeholder  : not in design doc
                }
            GatewaySubnet                    = {
                name                             = "GatewaySubnet"
                cidr                             = "10.156.247.64/26" # placeholder : not in design doc
                service_endpoints                = []
                }
            sec-fw-internet                      = {
                name                             = "sec-fw-internet"
                cidr                             = "10.156.240.32/27"
                service_endpoints                = []
                nsg_inbound                      = [
                    # {"Name", "Priority", "Direction", "Action", "Protocol", "source_port_range", "destination_port_range", "source_address_prefix", "destination_address_prefix" }
                    ["Deny_All_Inbound", 400, "Inbound", "Deny", "*", "*", "*", "*", "10.156.240.32/27"]
                ]
                nsg_outbound                     = []
            }
            sec-fw-trust                         = {
                name                             = "sec-fw-trust"
                cidr                             = "10.156.240.64/27"
                service_endpoints                = []
                nsg_inbound                      = []
                nsg_outbound                     = []
            }
            sec-fw-mgmt                          = {
                name                             = "sec-fw-mgmt"
                cidr                             = "10.156.240.96/27"
                service_endpoints                = []
                nsg_inbound                      = [
                    ["Allow_Port_22_Inbound", 300, "Inbound", "Allow", "Tcp", "*", "22", "*", "10.156.240.96/27"],
                    ["Allow_Port_443_Inbound", 310, "Inbound", "Allow", "Tcp", "*", "443", "*", "10.156.240.96/27"],
                    ["Allow_Port_3978_Inbound", 320, "Inbound", "Allow", "Tcp", "*", "3978", "*", "10.156.240.96/27"],
                    ["Allow_Port_28443_Inbound", 330, "Inbound", "Allow", "Tcp", "*", "28443", "*", "10.156.240.96/27"],
                    ["Allow_Port_28769_Inbound", 340, "Inbound", "Allow", "Tcp", "*", "28769", "*", "10.156.240.96/27"],
                    ["Allow_Port_28_Inbound", 350, "Inbound", "Allow", "Tcp", "*", "28", "*", "10.156.240.96/27"],
                    ["Allow_Port_28260_Inbound", 360, "Inbound", "Allow", "Tcp", "*", "28260", "*", "10.156.240.96/27"],
                    ["Allow_Port_514_Inbound", 370, "Inbound", "Allow", "Tcp", "*", "514", "*", "10.156.240.96/27"],
                    ["Allow_Port_53_Inbound", 380, "Inbound", "Allow", "Tcp", "*", "53", "*", "10.156.240.96/27"],
                    ["Allow_Port_123_Inbound", 390, "Inbound", "Allow", "Udp", "*", "123", "*", "10.156.240.96/27"]
                ]
                nsg_outbound                     = [
                    ["Allow_Port_3978_Outbound", 2000, "Outbound", "Allow", "Tcp", "*", "3978", "*", "10.156.240.96/27"],
                    ["Allow_Port_28720_Outbound", 2010, "Outbound", "Allow", "Tcp", "*", "28720", "*", "10.156.240.96/27"],
                    ["Allow_Port_514_Outbound", 2020, "Outbound", "Allow", "Tcp", "*", "514", "*", "10.156.240.96/27"]
                ]
            }
            bind-dns                             = {
                name                             = "bind-dns"
                cidr                             = "10.156.240.128/27"
                service_endpoints                = []
                nsg_inbound                      = []
                nsg_outbound                     = []
            }
            ops                                  = {
                name                             = "ops"
                cidr                             = "10.156.240.160/27"
                service_endpoints                = []
                nsg_inbound                      = []
                nsg_outbound                     = []
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