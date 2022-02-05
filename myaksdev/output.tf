output "cluster_name" {
  value = var.cluster_name
}

output "region" {
  value = var.region
}

output "resource_group" {
  value = var.resource_group
}

output "User_nodepool1" {
  value = azurerm_kubernetes_cluster_node_pool.primary.name
}

output "User_nodepool2" {
  value = azurerm_kubernetes_cluster_node_pool.secondary.name
}
