resource "azurerm_servicebus_namespace" "servicebus" {
  name                = "${var.servicebus_name}"
  location            = "${var.project_location}"
  resource_group_name = "${azurerm_resource_group.az_rg.name}"
  sku                 = "standard"
  tags = "${merge(map(
    "Description", "${var.tags["environment"]} servicebus"),
    var.tags
)}"
}

 resource "azurerm_servicebus_queue" "sbusqueue" {
  count = 2
  name                = "${lookup(var.sbusqueue_nameslist, count.index)}"
  resource_group_name = "${azurerm_resource_group.az_rg.name}"
  namespace_name      = "${azurerm_servicebus_namespace.servicebus.name}"
  enable_partitioning = "false"
}
