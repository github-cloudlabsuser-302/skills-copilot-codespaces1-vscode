provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "testrg"
  location = "West Europe"
}
c
resource "azurerm_storage_account" "example" {
  name                     = "storageAccountTest"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}