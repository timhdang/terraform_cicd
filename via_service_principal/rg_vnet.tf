resource "azurerm_resource_group" "dev_rg" {

  name     = "dev-rg"
  location = "westus2"
}

resource "azurerm_virtual_network" "dev_vnet" {
  name                = "dev-vnet"
  location            = "westus2"
  resource_group_name = azurerm_resource_group.dev_rg.name
  address_space       = ["10.69.0.0/24"]

}
