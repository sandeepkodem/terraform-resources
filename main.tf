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
   subscription_id = $(var.subscription_id)
   tenant_id = $(var.tenant_id)
   client_secret = $(var.client_secret)
   client_id = $(var.client_id)
}
  terraform {
  backend "azurerm" {
    storage_account_name = "storage456781"
    container_name       = "terrastatecontianer"
    key                  = "prod.terraform.tfstate"

    # rather than defining this inline, the SAS Token can also be sourced
    # from an Environment Variable - more information is available below.
    access_key = "9GB00W88YiByjwOdOMio9laKeOsteU2jz4MY/f85ItPB7ovZU1bsE6Ij7BJHWGbdsh/DTAKno1HT+AStemu8UQ=="
  }
}
resource "azurerm_resource_group" "rg1"{
  name= "newreosurce45687"
  location= "Central India"

}
