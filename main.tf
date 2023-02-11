resource "azurerm_resource_group" "azurecntrgy" {
  name     = "acntrgy"
  location = var.location
}

resource "azurerm_container_registry" "tfdokeracrgy" {
  name                = "tfdokeracry"
  resource_group_name = azurerm_resource_group.azurecntrgy.name
  location            = azurerm_resource_group.azurecntrgy.location
  sku                 = "Basic"
}
