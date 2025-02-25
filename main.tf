terraform {
  backend "local" {
    path = "./terraform.tfstate"
  }
  required_providers {
    libvirt = {
      source  = "dmacvicar/libvirt"
      version = "0.8.1"
    }
    cloudinit = {
      source = "hashicorp/cloudinit"
      version = "2.3.6-alpha1"
    }
  }
}