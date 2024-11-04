resource "azurerm_user_assigned_identity" "identity" {
  name                = var.managed_identity_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}
