variable "resource_group_name" {
  description = "(Required) Specifies the name of the resource group"
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

variable "application_insights_name" {
  description = "(Required) Specifies the name of the application insights resource"
  type        = string
#  default = ""
}

variable "webapp_os_type" {
  description = "(Optional) Specifies the account kind of the webapp os"
  default     = "Windows"
  type        = string

   validation {
    condition = contains(["Windows", "Linux"], var.webapp_os_type)
    error_message = "Please check the kind you selected."
  }
}
variable "app_service_name" {
  description = "(Required) Specifies the name of the web app service"
  type        = string
#  default = ""
} 
