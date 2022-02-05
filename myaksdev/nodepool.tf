resource "azurerm_kubernetes_cluster_node_pool" "primary" {
  name                  = "devpool"
  kubernetes_cluster_id = azurerm_kubernetes_cluster.primary.id
  vm_size               = "Standard_B2s"
  enable_auto_scaling   = true
  min_count		= 0
  max_count		= 2

  tags = {
    Environment = "Development"
  }
}


resource "azurerm_kubernetes_cluster_node_pool" "secondary" {
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
