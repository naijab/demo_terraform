provider "digitalocean" {
  token = var.digital_token
}

resource "digitalocean_droplet" "droplet" {
  name = "demo-k8s"

  image  = local.image.ubuntu18
  count  = 3
  region = local.region.singapore
  size   = local.sizes.nano

  ssh_keys = [
    var.ssh_fingerprint
  ]
}


