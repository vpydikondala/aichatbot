resource "azurerm_private_endpoint" "app_service_private_endpoint" {
  name                = var.private_endpoint_subnet_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  subnet_id           = azurerm_subnet.private_endpoint_subnet.id

  private_service_connection {
    name                           = "appServiceConnection"
    private_connection_resource_id = azurerm_app_service.app_service.id
    is_manual_connection           = false
    subresource_names              = ["sites"]
  }
}

resource "azurerm_private_dns_zone" "app_service_dns_zone" {
  name                = "privatelink.azurewebsites.net"
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_private_dns_zone_virtual_network_link" "app_service_dns_vnet_link" {
  name                  = "vnetLink"
  resource_group_name   = azurerm_resource_group.rg.name
  private_dns_zone_name = azurerm_private_dns_zone.app_service_dns_zone.name
  virtual_network_id    = azurerm_virtual_network.vnet.id
}
