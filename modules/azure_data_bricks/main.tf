data "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  
}

resource "azurerm_databricks_workspace" "example" {
  name                = var.azurerm_databricks_workspace_name
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  sku                 = "standard"

}