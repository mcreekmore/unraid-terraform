resource "libvirt_network" "tofu" {
  name      = "tofu"
  mode      = "bridge"
  bridge    = var.network_interface
  addresses = [var.network_subnet]
  autostart = true
}