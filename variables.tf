variable "subscription_id" {
  description = "(Required) Specifies the id of the subscription account"
  type        = string
  
}
variable "tenant_id" {
  description = "(Required) Specifies tenant(directory) id"
  type        = string
  
}

variable "client_secret" {
  description = "(Required) Specifies the name of the storage account"
  type        = string
  
}

variable "client_id" {
  description = "(Required) Specifies the application (client) ID"
  type        = string
  
}
variable "resource_group_name" {
  description = "(Required) Specifies the name of the resource group"
  type        = string
#  default = ""
}

variable "application_insights_name" {
  description = "Specifies the name of the application insights resource"
  type        = string
  #default = "daurltinsings"
}

variable "app_service_name" {
  description = "(Required) Specifies the name of the web app service"
  type        = string
#  default = ""
} 
variable "app-service-plan-name" {
  description = "Specifies the name of app service plan"
  #default     = ""
  type        = string
}
variable "web-app-name" {
  description = "Specifies the name fo the webapp"
  type        = string
#  default     = ""
}


variable "key_vault_name" {
  description = "(Required) Specifies the name of the key vault."
  type        = string
  #default =   ""
}
variable "storage_account_name" {
  description = "(Required) Specifies the name of the storage account"
  type        = string
  #default = "s"
}
variable "mssql_server_name" {
  description = "(Required) Specifies the name of the mssql server"
  type        = string
#  default = ""
}

variable "mssql_server_administrator_login" {
    description = "(Required) Specifies administrator login"
    type = string
}

variable "administrator_login_password" {
  description = "(Required) Specifies administrator login password for mssql server"
  type        = string
#  default = ""
}

variable "sql_database_name" {
  description = "(Required) Specifies the name of the sql database"
  type        = string
#  default = ""
}
variable "azurerm_databricks_workspace_name" {
  description = "(Required) Specifies the name of the azure databrcks resource"
  type        = string
#  default = ""
}