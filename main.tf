provider "digitalocean" {
  token = var.digital_token
}

resource "digitalocean_droplet" "terraform-micro" {
  image  = "ubuntu-18-04-x64"
  name   = "terraform-micro"
  region = "sgp1"
  count  = 3
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    var.ssh_fingerprint
  ]

  connection {
    host        = self.ipv4_address
    type        = "ssh"
    private_key = file(var.private_key)
    user        = "root"
    timeout     = "2m"
  }

}

output "public_ip" {
  value = digitalocean_droplet.terraform-micro.ipv4_address
}

output "name" {
  value = digitalocean_droplet.terraform-micro.name
}

