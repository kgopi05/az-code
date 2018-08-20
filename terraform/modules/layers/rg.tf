resource azurerm_resource_group "az_rg" {
  name = "${var.az_rg}"
  location = "${var.project_location}"
  tags = "${merge(map(
    "Name", "${var.tags["environment"]}-RG",
    "Description", "${var.tags["environment"]} RG"),
    var.tags
)}"
}
