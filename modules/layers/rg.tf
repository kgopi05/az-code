resource azurerm_resource_group "az_rg" {
  name = "${var.az_rg}"
  location = "${var.project_location}"
}
