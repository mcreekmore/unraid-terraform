provider "libvirt" {
  uri = "qemu+ssh://root@unraid/system?sshauth=privkey&keyfile=/home/yourhomedir/.ssh/id_ed25519&no_verify=1"
}