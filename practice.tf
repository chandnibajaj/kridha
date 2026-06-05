terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=4.1.0"
    }
  }
}

provider "azurerm" {
  features {}

}

resource "azurerm_resource_group" "Practice" {
  name     = "practice_actions"
  location = "central india"
}

resource "azurerm_resource_group" "Practice1" {
  name     = "practice_actions_1"
  location = "central india"
}