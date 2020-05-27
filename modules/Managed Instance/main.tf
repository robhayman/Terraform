provider "azurerm" {
  version = "<= 2.11.0"
  features {}

  subscription_id = "sub_id"
  tenant_id = "tenant_id"
  client_id = "client_id"
  client_secret = "client_secret"
}
