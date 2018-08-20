provider "azurerm" {

}

terraform {
  backend "azurerm" {
    resource_group_name = "Cloud_Support_Sandpit"
    storage_account_name = "brprodsg01"
    container_name       = "brprod-tf"
    key = "brprod.tfstate"
    access_key = "8emLzB6J2ydCCTaDC/m95ov5JaOShT98s2Nr99GmWH0yg32EDTmTyjtE98l7ZzdTM3YvCNlpSjviYzrEc8ZQAQ=="
  }
}
