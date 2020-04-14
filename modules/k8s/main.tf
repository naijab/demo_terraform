/*
Kubernetest Cluster
*/
resource "digitalocean_kubernetes_cluster" "cluster" {
  name    = var.k8s_name
  region  = var.k8s_region
  version = var.k8s_version
  tags    = var.k8s_tags

  node_pool {
    name       = var.k8s_node_name
    size       = var.k8s_node_size
    node_count = var.k8s_node_total
    tags       = var.k8s_node_tags
  }
}
