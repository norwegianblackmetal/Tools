terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "node" {
  count  = 4
  name   = format("node-%02d", count.index + 1)
<<<<<<< HEAD
  image  = "./CentOS 7.9-2009 (64bit).vdi"
  cpus   = 2
=======
  image = "./CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
  cpus   = 1
>>>>>>> 209b7917a0d32689d7cd577dd4902573637ab5fb
  memory = "2048 mib"

  network_adapter {
    type           = "nat"
  }
}
