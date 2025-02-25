resource "libvirt_domain" "vm" {
  name       = var.vm_name
  memory     = var.vm_memory
  vcpu       = var.vm_vcpu
  autostart  = true
  qemu_agent = true
  cloudinit  = libvirt_cloudinit_disk.commoninit.id

  network_interface {
    bridge     = var.network_interface
    wait_for_lease = true
  }

  disk {
    volume_id = libvirt_volume.vm_disk.id
  }

  cpu {
    mode = "host-passthrough"
  }

  console {
    type        = "pty"
    target_port = "0"
    target_type = "serial"
  }

  graphics {
    type        = "spice"
    listen_type = "address"
    autoport    = true
  }
}