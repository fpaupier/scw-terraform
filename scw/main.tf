terraform {
  required_providers {
    scaleway = {
      source = "scaleway/scaleway"
    }
  }
  required_version = ">= 0.13"
}

provider "scaleway" {
  zone            = "fr-par-1"
  region          = "fr-par"
}

resource "scaleway_instance_ip" "public_ip" {}


resource "scaleway_instance_server" "web" {
  type  = "DEV1-S"
  image = "ubuntu_focal"
  name = "scw-office"
  tags = [ "dev", "experiment", "side project" ]
  enable_ipv6 = true
  ip_id = scaleway_instance_ip.public_ip.id

}
