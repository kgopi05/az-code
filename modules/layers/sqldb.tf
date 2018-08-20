resource "azurerm_sql_database" "sql_db" {
  count = "1"
  name                = "${var.sqldbname}${count.index+1}"
  resource_group_name = "${azurerm_resource_group.az_rg.name}"
  location = "${var.project_location}"
  server_name = "${azurerm_sql_server.sqlserver.name}"
  edition = "${var.sqldbedition}"
}


# resource "azurerm_sql_firewall_rule" "sql_db_port" {
#   name                = "FirewallRule1"
#   resource_group_name = "${azurerm_resource_group.test.name}"
#   server_name         = "${azurerm_sql_server.test.name}"
#   start_ip_address    = "10.0.17.62"
#   end_ip_address      = "10.0.17.62"
# }
