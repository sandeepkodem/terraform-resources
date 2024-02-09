data "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  
}
data "azurerm_application_insights" "appinsights" {
    name    = var.application_insights_name
    resource_group_name = data.azurerm_resource_group.example.name
}

resource "azurerm_app_service_plan" "app-service" {
  name                = var.app-service-plan-name
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  sku {
    tier = "Basic"
    size = "B1"
  }
  kind                = var.webapp_os_type
}
resource "azurerm_app_service" "example" {
  name                = var.app_service_name
  location            = data.azurerm_resource_group.example.location
  resource_group_name = data.azurerm_resource_group.example.name
  app_service_plan_id = azurerm_app_service_plan.app-service.id

  app_settings = {
    "APPINSIGHTS_INSTRUMENTATIONKEY" = data.azurerm_application_insights.appinsights.instrumentation_key
  }
}


