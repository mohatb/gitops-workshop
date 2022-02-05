terraform {
  backend "azurerm" {
    resource_group_name  = "devops-catalog-aks"
    storage_account_name = "doc20220204233152"
    container_name       = "doc20220204233152"
    key                  = "terraform.tfstate"
  }
}
