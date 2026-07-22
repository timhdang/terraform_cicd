terraform {
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

  required_version = ">= 1.6.0"
}

# Default AzureRM provider
provider "azurerm" {
  features {}

  terraform {
  backend "azurerm" {
    resource_group_name  = "dev-rg"
    storage_account_name = "tdangdevstorageaccount1"
    container_name       = "tfstate"
    key                  = "prod/terraform.tfstate"
  }
  }
}
