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
  image = "./CentOS-7-x86_64-Vagrant-2004_01.VirtualBox.box"
  cpus   = 1
  memory = "2048 mib"

  network_adapter {
    type           = "nat"
  }
}
