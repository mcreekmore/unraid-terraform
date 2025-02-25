resource "libvirt_pool" "isos" {
  name = "isos"
  type = "dir"
  target {
    path = var.isos_path
  }
}

resource "libvirt_pool" "domains" {
  name = "domains"
  type = "dir"
  target {
    path = var.domains_path
  }
}

resource "libvirt_volume" "vm_image" {
  name   = "${var.vm_name}_image.qcow2"
  pool   = libvirt_pool.isos.name
  source = var.source_image
}

resource "libvirt_volume" "vm_disk" {
  name           = "${var.vm_name}_disk.qcow2"
  base_volume_id = libvirt_volume.vm_image.id
  pool           = libvirt_pool.domains.name
  size           = var.vm_disk_size
}