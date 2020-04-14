provider "digitalocean" {
  token = var.digital_token
}

# module "create-droplet" {
#   source          = "./modules/droplet"
#   droplet_name    = "demo-droplet"
#   droplet_image   = local.images.ubuntu18
#   droplet_total   = 1
#   droplet_region  = local.regions.singapore
#   droplet_size    = local.sizes.nano
#   ssh_fingerprint = var.ssh_fingerprint
# }

module "create-k8s-cluster" {
  source         = "./modules/k8s"
  k8s_name       = "demo-k8s"
  k8s_region     = local.regions.singapore
  k8s_version    = local.k8s_versions.latest
  k8s_tags       = ["demo-k8s"]
  k8s_node_name  = "demo-k8s-node"
  k8s_node_size  = local.sizes.micro
  k8s_node_total = 3
  k8s_node_tags  = ["demo-k8s"]
}
