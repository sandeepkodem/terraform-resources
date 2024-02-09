variable "resource_group_name" {
  description = "(Required) Specifies the name of the resource group"
  type        = string
#  default = ""
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