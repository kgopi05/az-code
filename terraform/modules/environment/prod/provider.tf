provider "azurerm" {

}

terraform {
  backend "azurerm" {
    resource_group_name = "Cloud_Support_Sandpit"
    storage_account_name = "brprodsg01"
    container_name       = "brprod-tf"
    key = "brprod.tfstate"
    access_key = "jN+wkmpnLd2qutB6b0jmiBGZkRUahZUbH6V9Sffk3a9UT0XlErC+uTMX5GouJ5HgHj3QQbys7ACfyN6WIZo2Zg=="
  }
}
