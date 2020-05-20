resource "azurerm_firewall_application_rule_collection" "example" {
  name                = var.app_rule_name
  azure_firewall_name = var.azure_firewall_name
  resource_group_name = var.resource_group_name
  priority            = var.app_rule_priority
  action              = var.app_rule_action 

   dynamic "rule" {
      for_each = [var.rule]
    name = rule.value.name
    description = rule.value.description
    source_addresses = rule.value.source_address
    target_fqdns = rule.value.target_fqdns
     protocol {
      port = rule.value.protocol.port
      type = rule.value.protocol.type
    }
  }
}

resource "azurerm_firewall_nat_rule_collection" "example" {
  name                = var.nat_rule_name
  azure_firewall_name = var.azure_firewall_name
  resource_group_name = var.resource_group_name
  priority            = var.nat_rule_priority
  action              = var.nat_rule_action

  dynamic "rule" {
      for_each = [var.rule]
    name = rule.value.name
    description = rule.value.description
    source_addresses = rule.value.source_address
    destination_ports = rule.value.destination_ports
    destination_addresses = rule.value.destination_addresses
    protocols = rule.value.protocols
      }
  }

resource "azurerm_firewall_network_rule_collection" "example" {
  for_each = var.collection_rules_object
  name                = each.value.net_rule_name
  azure_firewall_name = local.azure_firewall_name
  resource_group_name = local.resource_group_name
  priority            = each.value.net_rule_priority
  action              = each.value.net_rule_action

  dynamic "rule" {
            for_each = [each.value.rule]
    content  {
    name = rule.value.name
    description = rule.value.description
    source_addresses = rule.value.source_addresses
    destination_ports = rule.value.destination_ports
    destination_addresses = rule.value.destination_addresses
    protocols = rule.value.protocols
      }
  }
}


variable "net_rule_name" {
    description = "name of the network rule collection"
}

variable "azure_firewall_name" {
    description = "name of the Azure firewall"
}

variable "resource_group_name" {
    description = "name of the resource group"
}

variable "net_rule_priority" {
    description = "PRiority of the collection"
}

variable "net_rule_action" {
    description = "action to be taken"
}

variable "rule"            {
    description = "rule to be applied"
}

