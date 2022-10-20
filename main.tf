terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.15.00"
    }
  }
  backend "azurerm" {
    resource_group_name = "rg-bootcamp-tfstate"
    storage_account_name = "sambabootcamptfstate"
    container_name = "scmbabootcamptfstate"
    key = "$(keyStorageAccount)"
  }
}

provider "azurerm" {
  features {
  }
}