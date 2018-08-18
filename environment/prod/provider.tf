provider "azurerm" {

}

terraform {
  backend "azurerm" {
    resource_group_name = "Cloud_Support_Sandpit"
    storage_account_name = "brprodsg01"
    container_name       = "brprod-tf"
    key = "brprod.tfstate"
    access_key   = "uVfvRO7wdjIYPO0Ky4RdsKamOHdo615R2bL+LmlOChf0K5ljoOfENQ3RIxAmi+ePLKYh/z88e18baU67fW33pQ=="
  }
}
