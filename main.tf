terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }

  required_version = ">= 1.1.0"

  # backend "local" {
  # }
  cloud {
    organization = "bilalgonen-hotmail1"
    workspaces {
      name = "learn-terraform-azure"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "079a4fa4-5be4-4768-920a-3396fc0b4ae3"
  tenant_id       = "25feffe4-24a0-4a50-9fb0-a9aa9eb99e1b"

}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = "westus2"

  tags = {
    Environment = "Terraform Getting Started"
    Team        = "DevOps"
  }
}

# Create a virtual network
# resource "azurerm_virtual_network" "vnet" {
#   name                = "myTFVnet"
#   address_space       = ["10.0.0.0/16"]
#   location            = "westus2"
#   resource_group_name = azurerm_resource_group.rg.name
# }
