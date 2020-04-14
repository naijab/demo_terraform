locals {
  sizes = {
    nano      = "s-1vcpu-1gb"
    micro     = "s-2vcpu-2gb"
    small     = "s-2vcpu-4gb"
    medium    = "s-4vcpu-8gb"
    large     = "s-6vcpu-16gb"
    x-large   = "s-8vcpu-32gb"
    xx-large  = "s-16vcpu-64gb"
    xxx-large = "s-24vcpu-128gb"
    maximum   = "s-32vcpu-192gb"
  }
  region = {
    singapore = "sgp1"
  }
  image = {
    ubuntu16 = "ubuntu-16-04-x64"
    ubuntu18 = "ubuntu-18-04-x64"
  }
}

variable "digital_token" {}
variable "public_key" {}
variable "private_key" {}
variable "ssh_fingerprint" {}
