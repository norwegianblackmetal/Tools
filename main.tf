terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

resource "virtualbox_vm" "node" {
  count  = 1
  name   = format("node-%02d", count.index + 1)
  image  = "./CentOS 7.9-2009 (64bit).vdi"
  cpus   = 2
  memory = "2048 mib"

  network_adapter {
    type           = "bridged"
    host_interface = "en0"
  }


}

provider "virtualbox" {
  # Configuration options
}
