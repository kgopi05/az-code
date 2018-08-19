module "layers" {
  source = "../../modules/layers"
  az_vnet = "${var.az_vnet}"
  az_rg = "${var.az_rg}"
  project_location = "${var.project_location}"
  vnet_address_space = "${var.vnet_address_space}"
  public_subnet = "${var.public_subnet}"
  public_subnet_address_prefix = "${var.public_subnet_address_prefix}"
  sqlversion= "${vari.sqlversio}"
  sqladmin="${var.sqladmin}"
  sqladminpassword="${var.sqladminpassword}"

}
