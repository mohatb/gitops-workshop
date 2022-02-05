output "cluster_name" {
  value = var.cluster_name
}

output "region" {
  value = var.region
}

output "resource_group" {
  value = var.resource_group
}

output "dev_nodepool" {
  value = azurerm_kubernetes_cluster_node_pool.dev.name
}

output "staging_nodepool" {
  value = azurerm_kubernetes_cluster_node_pool.staging.name
}

output "prod_nodepool" {
  value = azurerm_kubernetes_cluster_node_pool.prod.name
}
