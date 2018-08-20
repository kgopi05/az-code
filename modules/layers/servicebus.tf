# resource "azurerm_servicebus_namespace" "test" {
#   name                = "${var.servicebus_name}"
#   location            = "${var.location}"
#   resource_group_name = "${azurerm_resource_group.test.name}"
#   sku                 = "standard"
#
#   tags {
#     source = "terraform"
#   }
# }
#
# resource "azurerm_servicebus_topic" "test" {
#   name                = "testTopic"
#   resource_group_name = "${azurerm_resource_group.test.name}"
#   namespace_name      = "${azurerm_servicebus_namespace.test.name}"
#
#   enable_partitioning = true
# }
