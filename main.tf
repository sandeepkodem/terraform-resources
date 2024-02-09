terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.87.0"
    }
  }
}

provider "azurerm" {
   features {}
   subscription_id = var.subscription_id
   tenant_id = var.tenant_id
   client_secret = var.client_secret
   client_id = var.client_id
}


module "azure_app_insights" {
  source= "./modules/app-insights"
  resource_group_name= var.resource_group_name
  application_insights_name= var.application_insights_name
}

module "azure_app_service" {
  source = "./modules/azure-web-app"
  resource_group_name= var.resource_group_name
  #application-insights-name = var.application_insights_name
  web-app-name= var.web-app-name
  app-service-plan-name= var.app-service-plan-name
  app_service_name= var.app_service_name
  application_insights_name = var.application_insights_name

  depends_on = [ module.azure_app_insights ]
}


module "azure_key_vault" {
  source= "./modules/key_vault"
  resource_group_name= var.resource_group_name
  key_vault_name= var.key_vault_name

}

module "azure_storage_account" {
  source= "./modules/storage_account"
  resource_group_name= var.resource_group_name
  storage_account_name= var.storage_account_name

  
}

module "azure_sql_data" {
  source= "./modules/sql_data"
  resource_group_name= var.resource_group_name
  sql_database_name = var.sql_database_name
  mssql_server_name= var.mssql_server_name
  mssql_server_administrator_login= var.mssql_server_administrator_login
  administrator_login_password= var.administrator_login_password
}

module "azure_data_bricks" {
  source= "./modules/azure_data_bricks"
  resource_group_name= var.resource_group_name
  azurerm_databricks_workspace_name=  var.azurerm_databricks_workspace_name
}