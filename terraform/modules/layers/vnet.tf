resource "azurerm_virtual_network" "az_vnet" {
  name                = "${var.az_vnet}"
  resource_group_name = "${var.az_rg}"
  address_space       =  ["${var.vnet_address_space}"]
  location            = "${var.project_location}"
  tags = "${merge(map(
    "Name", "${var.tags["environment"]}-Vnet",
    "Description", "${var.tags["environment"]} Vnet"),
    var.tags
)}"
  }
