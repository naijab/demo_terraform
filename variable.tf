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
  regions = {
    singapore = "sgp1"
  }
  images = {
    ubuntu16 = "ubuntu-16-04-x64"
    ubuntu18 = "ubuntu-18-04-x64"
  }
  k8s_versions = {
    latest = "1.16.6-do.2"
  }
}

variable "digital_token" {}
variable "public_key" {}
variable "private_key" {}
variable "ssh_fingerprint" {}
