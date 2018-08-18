variable "az_vnet" {
  default = "br_prod_vnet"
}

variable "az_rg" {
  default = "Cloud_Support_Sandpit"
}

variable "project_location" {
  default = "North Europe"
}

variable "vnet_address_space" {
  default = "192.168.0.0/24"
}


variable "public_subnet" {
  default = "br_prod_public_subnet"
}

variable "public_subnet_address_prefix" {
  default = "192.168.0.0/28"
}
