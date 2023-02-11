resource "azurerm_resource_group" "azurecrg" {
  name     = "acrg"
  location = var.location
}

resource "azurerm_container_registry" "tfdockeracrg" {
  name                = "tfdockeracr"
  resource_group_name = azurerm_resource_group.azurecrg.name
  location            = azurerm_resource_group.azurecrg.location
  sku                 = "Basic"
}
