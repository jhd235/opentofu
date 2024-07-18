provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id
}

resource "azurerm_resource_group" "example" {
  name     = "myResGroup"
  location = "West Europe"
}

output "resource_group_name" {
  description = "The name of the Azure Resource Group"
  value       = azurerm_resource_group.example.name
}