resource "azurerm_sql_server" "sqlserver" {
  name                         = "${var.project_name+"sqlserver"}"
  resource_group_name          = "${azurerm_resource_group.az_rg.name}"
  location                     = "${var.project_location}"
  version                      = "${var.sqlversion}"
  administrator_login          = "${var.sqladmin}"
  administrator_login_password = "${var.sqladminpassword}"

  tags {
    environment = "br-prod"
  }
}
