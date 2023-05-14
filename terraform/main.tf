##############################################################################
# * HashiCorp Beginner's Guide to Using Terraform on Azure
# 
# This Terraform configuration will create the following:
#
# Resource group with a virtual network and subnet
# An Ubuntu Linux server running Apache

##############################################################################
# * Shared infrastructure resources
terraform {
  backend "azurerm" {
    resource_group_name  = "mzuiit-terraform"
    storage_account_name = "mzuiittfsa"
    container_name       = "tfstatefile"
    key                  = "dev.terraform.tfstate"
  }
}

# First we'll create a resource group. In Azure every resource belongs to a 
# resource group. Think of it as a container to hold all your resources. 
# You can find a complete list of Azure resources supported by Terraform here:
# https://www.terraform.io/docs/providers/azurerm/
resource "azurerm_resource_group" "rg" {
  name     = var.rgname
  location = var.location
}