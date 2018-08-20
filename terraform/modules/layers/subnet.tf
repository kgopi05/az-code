resource "azurerm_subnet" "public_subnet" {
  name = "${var.public_subnet}"
  virtual_network_name = "${azurerm_virtual_network.az_vnet.name}"
  resource_group_name = "${var.az_rg}"
  address_prefix = "${var.public_subnet_address_prefix}"
#   tags = "${merge(map(
#     "Name", "${var.tags["environment"]}-subnet",
#     "Description", "${var.tags["environment"]} subnet"),
#     var.tags
# )}"
}
