module "network" {
  source = "./network"  # Chemin vers le module réseau

  resource_group_name = var.resource_group_name
  resource_group_location = var.resource_group_location
  vnet = var.vnet
  address_space = var.address_space
  subnet = var.subnet
  addresse_subnet = var.addresse_subnet
}

resource "azurerm_kubernetes_cluster" "cluster" {
  name                = var.cluster
  location            = module.network.resource_group_location
  resource_group_name = module.network.resource_group_name
  dns_prefix          = var.dns

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "Standard_DS2_v2"
  }
  
  identity {
    type = "SystemAssigned"
  }
}
