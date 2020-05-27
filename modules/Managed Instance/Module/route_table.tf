# Defining the Resource Group for the Subnet. 
data "azurerm_resource_group" "rt" {
  name = var.rt_rg
}

resource "azurerm_route_table" "general_rt" {
  name                          = var.rt_name_general
  location                      = "${data.azurerm_resource_group.rt.location}"
  resource_group_name           = "${data.azurerm_resource_group.rt.name}"
  disable_bgp_route_propagation = false

  route {
    name           = "subnet-to-vnetlocal"
    address_prefix = var.mi_Subnet_Prefix
    next_hop_type  = "VnetLocal"
  }
  route {
    name           = "mi-13-64-11-nexthop-internet"
    address_prefix = "13.64.0.0/11"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-13-96-13-nexthop-internet"
    address_prefix = "13.96.0.0/13"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-13-104-14-nexthop-internet"
    address_prefix = "13.104.0.0/14"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-20-8-nexthop-internet"
    address_prefix = "20.0.0.0/8"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-23-96-13-nexthop-internet"
    address_prefix = "23.96.0.0/13"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-40-64-10-nexthop-internet"
    address_prefix = "40.64.0.0/10"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-42-159-16-nexthop-internet"
    address_prefix = "42.159.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-51-8-nexthop-internet"
    address_prefix = "51.0.0.0/8"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-52-8-nexthop-internet"
    address_prefix = "52.0.0.0/8"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-64-4-18-nexthop-internet"
    address_prefix = "64.4.0.0/18"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-65-52-14-nexthop-internet"
    address_prefix = "65.52.0.0/14"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-66-119-144-20-nexthop-internet"
    address_prefix = "66.119.144.0/20"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-70-37-17-nexthop-internet"
    address_prefix = "70.37.0.0/17"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-70-37-128-18-nexthop-internet"
    address_prefix = "70.37.128.0/18"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-91-190-216-21-nexthop-internet"
    address_prefix = "91.190.216.0/21"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-94-245-64-18-nexthop-internet"
    address_prefix = "94.245.64.0/18"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-103-9-8-22-nexthop-internet"
    address_prefix = "103.9.8.0/22"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-103-25-156-22-nexthop-internet"
    address_prefix = "103.25.156.0/22"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-103-36-96-22-nexthop-internet"
    address_prefix = "103.36.96.0/22"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-103-255-140-22-nexthop-internet"
    address_prefix = "103.255.140.0/22"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-104-40-13-nexthop-internet"
    address_prefix = "104.40.0.0/13"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-104-146-15-nexthop-internet"
    address_prefix = "104.146.0.0/15"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-104-208-13-nexthop-internet"
    address_prefix = "104.208.0.0/13"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-111-221-16-20-nexthop-internet"
    address_prefix = "111.221.16.0/20"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-111-221-64-18-nexthop-internet"
    address_prefix = "111.221.64.0/18"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-129-75-16-nexthop-internet"
    address_prefix = "129.75.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-131-253-16-nexthop-internet"
    address_prefix = "131.253.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-132-245-16-nexthop-internet"
    address_prefix = "132.245.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-134-170-16-nexthop-internet"
    address_prefix = "134.170.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-134-177-16-nexthop-internet"
    address_prefix = "134.177.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-137-116-15-nexthop-internet"
    address_prefix = "137.116.0.0/15"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-137-135-16-nexthop-internet"
    address_prefix = "137.135.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-138-91-16-nexthop-internet"
    address_prefix = "138.91.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-138-196-16-nexthop-internet"
    address_prefix = "138.196.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-139-217-16-nexthop-internet"
    address_prefix = "139.217.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-139-219-16-nexthop-internet"
    address_prefix = "139.219.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-141-251-16-nexthop-internet"
    address_prefix = "141.251.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-146-147-16-nexthop-internet"
    address_prefix = "146.147.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-147-243-16-nexthop-internet"
    address_prefix = "147.243.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-150-171-16-nexthop-internet"
    address_prefix = "150.171.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-150-242-48-22-nexthop-internet"
    address_prefix = "150.242.48.0/22"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-157-54-15-nexthop-internet"
    address_prefix = "157.54.0.0/15"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-157-56-14-nexthop-internet"
    address_prefix = "157.56.0.0/14"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-157-60-16-nexthop-internet"
    address_prefix = "157.60.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-167-220-16-nexthop-internet"
    address_prefix = "167.220.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-168-61-16-nexthop-internet"
    address_prefix = "168.61.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-168-62-15-nexthop-internet"
    address_prefix = "168.62.0.0/15"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-191-232-13-nexthop-internet"
    address_prefix = "191.232.0.0/13"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-192-32-16-nexthop-internet"
    address_prefix = "192.32.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-192-48-225-24-nexthop-internet"
    address_prefix = "192.48.225.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-192-84-159-24-nexthop-internet"
    address_prefix = "192.84.159.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-192-84-160-23-nexthop-internet"
    address_prefix = "192.84.160.0/23"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-192-100-102-24-nexthop-internet"
    address_prefix = "192.100.102.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-192-100-103-24-nexthop-internet"
    address_prefix = "192.100.103.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-192-197-157-24-nexthop-internet"
    address_prefix = "192.197.157.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-193-149-64-19-nexthop-internet"
    address_prefix = "193.149.64.0/19"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-193-221-113-24-nexthop-internet"
    address_prefix = "193.221.113.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-194-69-96-19-nexthop-internet"
    address_prefix = "194.69.96.0/19"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-194-110-197-24-nexthop-internet"
    address_prefix = "194.110.197.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-198-105-232-22-nexthop-internet"
    address_prefix = "198.105.232.0/22"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-198-200-130-24-nexthop-internet"
    address_prefix = "198.200.130.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-198-206-164-24-nexthop-internet"
    address_prefix = "198.206.164.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-199-60-28-24-nexthop-internet"
    address_prefix = "199.60.28.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-199-74-210-24-nexthop-internet"
    address_prefix = "199.74.210.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-199-103-90-23-nexthop-internet"
    address_prefix = "199.103.90.0/23"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-199-103-122-24-nexthop-internet"
    address_prefix = "199.103.122.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-199-242-32-20-nexthop-internet"
    address_prefix = "199.242.32.0/20"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-199-242-48-21-nexthop-internet"
    address_prefix = "199.242.48.0/21"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-202-89-224-20-nexthop-internet"
    address_prefix = "202.89.224.0/20"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-13-120-21-nexthop-internet"
    address_prefix = "204.13.120.0/21"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-14-180-22-nexthop-internet"
    address_prefix = "204.14.180.0/22"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-79-135-24-nexthop-internet"
    address_prefix = "204.79.135.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-79-179-24-nexthop-internet"
    address_prefix = "204.79.179.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-79-181-24-nexthop-internet"
    address_prefix = "204.79.181.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-79-188-24-nexthop-internet"
    address_prefix = "204.79.188.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-79-195-24-nexthop-internet"
    address_prefix = "204.79.195.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-79-196-23-nexthop-internet"
    address_prefix = "204.79.196.0/23"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-79-252-24-nexthop-internet"
    address_prefix = "204.79.252.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-152-18-23-nexthop-internet"
    address_prefix = "204.152.18.0/23"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-152-140-23-nexthop-internet"
    address_prefix = "204.152.140.0/23"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-231-192-24-nexthop-internet"
    address_prefix = "204.231.192.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-231-194-23-nexthop-internet"
    address_prefix = "204.231.194.0/23"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-231-197-24-nexthop-internet"
    address_prefix = "204.231.197.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-231-198-23-nexthop-internet"
    address_prefix = "204.231.198.0/23"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-231-200-21-nexthop-internet"
    address_prefix = "204.231.200.0/21"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-231-208-20-nexthop-internet"
    address_prefix = "204.231.208.0/20"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-204-231-236-24-nexthop-internet"
    address_prefix = "204.231.236.0/24"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-205-174-224-20-nexthop-internet"
    address_prefix = "205.174.224.0/20"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-206-138-168-21-nexthop-internet"
    address_prefix = "206.138.168.0/21"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-206-191-224-19-nexthop-internet"
    address_prefix = "206.191.224.0/19"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-207-46-16-nexthop-internet"
    address_prefix = "207.46.0.0/16"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-207-68-128-18-nexthop-internet"
    address_prefix = "207.68.128.0/18"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-208-68-136-21-nexthop-internet"
    address_prefix = "208.68.136.0/21"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-208-76-44-22-nexthop-internet"
    address_prefix = "208.76.44.0/22"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-208-84-21-nexthop-internet"
    address_prefix = "208.84.0.0/21"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-209-240-192-19-nexthop-internet"
    address_prefix = "209.240.192.0/19"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-213-199-128-18-nexthop-internet"
    address_prefix = "213.199.128.0/18"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-216-32-180-22-nexthop-internet"
    address_prefix = "216.32.180.0/22"
    next_hop_type  = "Internet"
  }
  route {
    name           = "mi-216-220-208-20-nexthop-internet"
    address_prefix = "216.220.208.0/20"
    next_hop_type  = "Internet"
  }
}


