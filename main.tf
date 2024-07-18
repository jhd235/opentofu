provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "myResGroup"
  location = "West Europe"
}

output "resource_group_name" {
  description = "The name of the Azure Resource Group"
  value       = azurerm_resource_group.example.name
}