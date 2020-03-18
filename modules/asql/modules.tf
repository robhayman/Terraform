resource "azurerm_resource_group" "example" {
  name     = "database-rg"
  location = "West US"
}

resource "azurerm_storage_account" "example" {
  name                     = "examplesa"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_sql_server" "example" {
  name                         = "mysqlserver"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "mradministrator"
  administrator_login_password = "thisIsDog11"

  extended_auditing_policy {
    storage_endpoint                        = azurerm_storage_account.example.primary_blob_endpoint
    storage_account_access_key              = azurerm_storage_account.example.primary_access_key
    storage_account_access_key_is_secondary = true
    retention_in_days                       = 6
  }

  tags = {
    environment = "production"
  }
}

resource "azurerm_sql_database" "example" {
  name                = "mysqldatabase"
  resource_group_name = azurerm_resource_group.example.name
  location            = "West US"
  server_name         = azurerm_sql_server.example.name

  tags = {
    environment = "production"
  }
}

resource "azurerm_sql_failover_group" "example" {
  name                = "example-failover-group"
  resource_group_name = azurerm_sql_server.primary.resource_group_name
  server_name         = azurerm_sql_server.primary.name
  databases           = [azurerm_sql_database.db1.id]
  partner_servers {
    id = azurerm_sql_server.secondary.id
  }

  read_write_endpoint_failover_policy {
    mode          = "Automatic"
    grace_minutes = 60
  }
}

resource "azurerm_sql_firewall_rule" "example" {
  name                = "FirewallRule1"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_sql_server.example.name
  start_ip_address    = "10.0.17.62"
  end_ip_address      = "10.0.17.62"
}

resource "azurerm_sql_virtual_network_rule" "sqlvnetrule" {
  name                = "sql-vnet-rule"
  resource_group_name = azurerm_resource_group.example.name
  server_name         = azurerm_sql_server.sqlserver.name
  subnet_id           = azurerm_subnet.subnet.id
}
