
data "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  
}
resource "azurerm_application_insights" "example" {
  name                = var.application_insights_name
  location            = data.azurerm_resource_group.rg.location
  resource_group_name = data.azurerm_resource_group.rg.name
  application_type    = "web"
}

