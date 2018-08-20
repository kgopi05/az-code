## Common variables ##
variable "project_name" {}
variable "project_location" {}

## vpc & subnet variables ##
variable "az_vnet" {}
variable "az_rg"{}
variable "vnet_address_space" {}
variable "public_subnet" {}
variable "public_subnet_address_prefix"{}


## Variables for sql server ##

variable "sqlversion" {}
variable "sqladmin" {}
variable "sqladminpassword" {}


## variable for sql data_bag_name

variable "sqldbname" {}
variable "sqldbedition" {}
