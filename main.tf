resource "azurerm_resource_group" "azurecntrg" {
  name     = "acntrg"
  location = var.location
}

resource "azurerm_container_registry" "tfdokeracrg" {
  name                = "tfdokeracr"
  resource_group_name = azurerm_resource_group.azurecntrg.name
  location            = azurerm_resource_group.azurecntrg.location
  sku                 = "Basic"
}
