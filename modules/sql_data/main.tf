terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    }
  }

  required_version = ">= 0.14.9"
}

data "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  
}
resource "azurerm_mssql_server" "example" {
  name                         = var.mssql_server_name
  resource_group_name          = data.azurerm_resource_group.example.name
  location                     = data.azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = var.mssql_server_administrator_login
  administrator_login_password = var.administrator_login_password
}

resource "azurerm_mssql_database" "example" {
  name           = var.sql_database_name
  server_id      = azurerm_mssql_server.example.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  license_type   = "LicenseIncluded"
  max_size_gb    = 1
 
  sku_name       = "S0"
  zone_redundant = false     #change this for redundancy
  enclave_type   = "VBS"

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = false     
  }
  }