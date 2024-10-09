terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  backend "azurerm" {
      resource_group_name  = "de_p1_resource_group"
      storage_account_name = "North Europe"
      container_name       = "tfstatedataingpun"
      key                  = "terraform.tfstate"
  }

}