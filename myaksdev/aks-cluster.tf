resource "azurerm_kubernetes_cluster" "primary" {
  name                = var.cluster_name
  resource_group_name = var.resource_group
  location            = var.region
  dns_prefix          = var.dns_prefix
  kubernetes_version  = var.k8s_version

  default_node_pool {
    name       = "default"
    vm_size    = var.machine_type
    enable_auto_scaling = true
    min_count = 1
    max_count = 3
    os_sku = "CBLMariner"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}


