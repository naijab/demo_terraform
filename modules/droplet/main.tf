/*
Droplet
*/
resource "digitalocean_droplet" "droplet" {
  name   = var.droplet_name
  image  = var.droplet_image
  count  = var.droplet_total
  region = var.droplet_region
  size   = var.droplet_size

  ssh_keys = [
    var.ssh_fingerprint
  ]
}
