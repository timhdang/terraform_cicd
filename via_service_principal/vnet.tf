data "azurerm_resource_group" "dev_rg" {
  name = "dev-rg"
}

resource "azurerm_virtual_network" "dev_vnet" {
  name                = "dev-vnet"
  location            = data.azurerm_resource_group.dev_rg.location
  resource_group_name = data.azurerm_resource_group.dev_rg.name
  address_space       = ["10.69.0.0/24"]
}
