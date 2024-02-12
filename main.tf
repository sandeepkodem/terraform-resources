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
  terraform {
  backend "azurerm" {
    storage_account_name = "terraformstatebacku"
    container_name       = "terrastatecontianer"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the SAS Token can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "BiB1vSnZG+Oet0Iwo8RVvDJJ6KbVjq1spiHS9/NUAgAmRKPlCHfJR4iuuLZN6/1GFceXGxJObNaL+AStqDnxOw=="
  }
}
resource "azurerm_resource_group" "rg1"{
  name= "newreosurce45687"
  location= "Central India"

}
