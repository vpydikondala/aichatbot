resource "azurerm_machine_learning_workspace" "ml_workspace" {
  name                = "ml-workspace"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku_name            = "Basic"
}
