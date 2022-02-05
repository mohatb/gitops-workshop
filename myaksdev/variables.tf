variable "region" {
  type    = string
  default = "westeurope"
}

variable "resource_group" {
  type    = string
  default = "devops-catalog-aks"
}

variable "cluster_name" {
  type    = string
  default = "devopsaksabt"
}

variable "dns_prefix" {
  type    = string
  default = "devopsaksabt"
}

variable "k8s_version" {
  type = string
}

variable "min_node_count" {
  type    = number
  default = 1
}

variable "max_node_count" {
  type    = number
  default = 3
}

variable "machine_type" {
  type    = string
  default = "Standard_B2s"
}
