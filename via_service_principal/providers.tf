terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }

    azapi = {
      source  = "Azure/azapi"
      version = "~> 2.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "mgmt-rg"
    storage_account_name = "tdangmgmtstorageaccount1"
    container_name       = "tfstate"
    key                  = "prod/terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}
