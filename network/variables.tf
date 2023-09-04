variable "resource_group_name" {
    description = "nom du resource group"
    type = string
}

variable "resource_group_location" {
    description = "location du resource group"
    type = string
}

variable "vnet" {
    description = "virtual network"
    type = string
}
variable "address_space" {
    description = "addresse IP pr vnet"
    type = list(string)
}

variable "subnet" {
    description = "voila mon subnet"
    type = string
}
variable "addresse_subnet" {
    description = "addresse IP pr subnet"
    type = list(string)
}
