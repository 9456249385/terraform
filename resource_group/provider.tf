terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.26.0"
    }
  }

  backend "azurerm" {
   resource_group_name  = "11052025BACKENDRG"
   storage_account_name = "11052025backendsrg"
   container_name       = "11052025tfstate"
   key                  = "11052025foreachnestedmapresourcegroup.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "c73ce833-d225-4771-9308-2d9d07cd7e40"

}
