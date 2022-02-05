resource "azurerm_kubernetes_cluster_node_pool" "dev" {
  name                  = "dev"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.primary.id
  vm_size               = "Standard_B2s"
  enable_auto_scaling   = true
  min_count		= 0
  max_count		= 1

  tags = {
    Environment = "dev"
  }
}


resource "azurerm_kubernetes_cluster_node_pool" "staging" {
  name                  = "staging"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.primary.id
  vm_size               = "Standard_B2s"
  enable_auto_scaling   = true
  min_count             = 0
  max_count             = 2

  tags = {
    Environment = "staging"
  }
}

resource "azurerm_kubernetes_cluster_node_pool" "prod" {
  name                  = "prod"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.primary.id
  vm_size               = "Standard_B2s"
  enable_auto_scaling   = true
  min_count             = 0
  max_count             = 3

  tags = {
    Environment = "prod"
  }
}
