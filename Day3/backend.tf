terraform {
    backend "azurerm" {
    resource_group_name  = "tfstate-Day02"
    storage_account_name = "ppanche20accountstore"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
}
}