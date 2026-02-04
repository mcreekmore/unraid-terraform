locals {
  uri = var.uri
}

provider "libvirt" {
  uri = local.uri
}
