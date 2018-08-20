resource "azurerm_servicebus_namespace" "servicebus" {
  name                = "${var.servicebus_name}"
  location            = "${var.project_location}"
  resource_group_name = "${azurerm_resource_group.az_rg.name}"
  sku                 = "standard"
  tags = "${merge(map(
    "Description", "${var.tags["environment"]} SQL DB"),
    var.tags
)}"

}

# resource "azurerm_servicebus_topic" "test" {
#   name                = "testTopic"
#   resource_group_name = "${azurerm_resource_group.test.name}"
#   namespace_name      = "${azurerm_servicebus_namespace.test.name}"
#
#   enable_partitioning = true
# }


# resource "azurerm_servicebus_queue" "test" {
#   count = 2
#   name                = "testQueue"
#   resource_group_name = "${azurerm_resource_group.test.name}"
#   namespace_name      = "${azurerm_servicebus_namespace.test.name}"
#
#   enable_partitioning = true
# }
