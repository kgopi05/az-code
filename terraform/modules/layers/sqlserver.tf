resource "azurerm_sql_server" "sqlserver" {
  name                         = "${var.project_name}"
  resource_group_name          = "${var.az_rg}"
  location                     = "${var.project_location}"
  version                      = "${var.sqlversion}"
  administrator_login          = "${var.sqladmin}"
  administrator_login_password = "${var.sqladminpassword}"
  tags = "${merge(map(
    "Name", "${var.tags["environment"]}-sqlserver",
    "Description", "${var.tags["environment"]} sqlserver"),
    var.tags
)}"

}

# resource "azurerm_sql_active_directory_administrator" "test" {
#   server_name = "${azurerm_sql_server.test.name}"
#   resource_group_name = "${azurerm_resource_group.test.name}"
#   login = "sqladmin"
#   tenant_id = "${data.azurerm_client_config.current.tenant_id}"
#   object_id = "${data.azurerm_client_config.current.service_principal_object_id}"
# }
