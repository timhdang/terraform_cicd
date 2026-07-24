data "azurerm_resource_group" "dev_rg" {
  name = "dev-rg"
}

resource "azurerm_virtual_network" "dev_vnet" {
  name                = "dev-vnet"
  location            = data.azurerm_resource_group.dev_rg.location
  resource_group_name = data.azurerm_resource_group.dev_rg.name
  address_space       = ["10.69.0.0/24"]
}

resource "azurerm_subnet" "subnet1" {
  name                 = "subnet1"
  resource_group_name  = data.azurerm_resource_group.dev_rg.name
  virtual_network_name = azurerm_virtual_network.dev_vnet.name
  address_prefixes     = ["10.69.0.200/28"]
}
