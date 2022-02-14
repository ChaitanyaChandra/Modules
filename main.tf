variable "rg_name" {
  type = string
}

variable "rg_location" {
  type = string
}

resource "azurerm_resource_group" "rg_group" {
  name     = var.rg_name
  location = var.rg_location
}

output "id" {
  value = azurerm_resource_group.rg_group.id
}