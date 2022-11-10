resource "azurerm_container_registry" "acr" {
  name                = "containerRegistry55"
location            = azurerm_resource_group.aks_rg.location
  resource_group_name = azurerm_resource_group.aks_rg.name
  sku                 = "Premium"
  admin_enabled       = false
}
