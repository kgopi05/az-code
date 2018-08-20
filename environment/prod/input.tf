variable "az_vnet" {
  default = "br_prod_vnet"
}

variable "az_rg" {
  default = "Cloud_Support_Sandpit"
}

variable "tags" {
  default = {
    owner       = "Talha Khan"
    email       = "Talha.Khan@sainsburys.co.uk"
    project     = "br-dev"
    environment = "dev"
    costcentre  = "XXXX"
    live        = "no"
  }
  description = "Map of tags to be assigned to the resources"
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

variable "project_name" {
  default = "br-prod"
}

variable "sqlversion" {
  default = "12.0"
}

variable "sqladmin" {
  default = "brazadmin"
}

variable "sqladminpassword" {
  default = "@zadm!n1234"
}



variable "sqldbname" {
  default = "brprod"
  description = "Database 01"
}

variable "sqldbedition" {
  default = "Basic"
}

variable "servicebus_name" {
  default = "brprodservicebus"
}

variable "servicebus_nameslist" {
  type = "list"
  default = ["brprod.queue.disposal-notice-reporting", "brprod.queue.eod-stock-reporting"]
}
