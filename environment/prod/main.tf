module "layers" {
  source = "../../modules/layers"
  tags        = "${var.tags}"
  az_vnet = "${var.az_vnet}"
  az_rg = "${var.az_rg}"
  project_location = "${var.project_location}"
  project_name = "${var.project_name}"
  vnet_address_space = "${var.vnet_address_space}"
  public_subnet = "${var.public_subnet}"
  public_subnet_address_prefix = "${var.public_subnet_address_prefix}"
  sqlversion= "${var.sqlversion}"
  sqladmin="${var.sqladmin}"
  sqladminpassword="${var.sqladminpassword}"
  sqldbname = "${var.sqldbname}"
  sqldbedition = "${var.sqldbedition}"
  servicebus_name = "${var.servicebus_name}"
}
