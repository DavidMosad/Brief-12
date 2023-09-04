resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = var.resource_group_name
}

resource "azurerm_virtual_network" "vnet" {
    name                = var.vnet
    location            = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    address_space       = var.address_space
}

resource "azurerm_subnet" "subnet" {
    name                 = var.subnet
    resource_group_name  = azurerm_resource_group.rg.name
    virtual_network_name = azurerm_virtual_network.vnet.name
    address_prefixes     = var.addresse_subnet
}