resource "azurerm_sql_database" "sql_db" {
  count = "2"
  name                = "${var.sqldbname}${count.index+1}"
  resource_group_name = "${azurerm_resource_group.az_rg.name}"
  location = "${var.project_location}"
  server_name = "${azurerm_sql_server.sqlserver.name}"
}
