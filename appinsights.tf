# Application Insights
resource "azurerm_application_insights" "app_insights" {
  name                = var.app_insights_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  application_type    = "web"    # Set to "web" for web applications. Use "other" if you have a non-web app.

  # Retention period for log data (in days)
  retention_in_days = 90
}

# Optional: Outputs for Application Insights connection string and instrumentation key
output "application_insights_instrumentation_key" {
  value = azurerm_application_insights.app_insights.instrumentation_key
}

output "application_insights_connection_string" {
  value = azurerm_application_insights.app_insights.connection_string
}
