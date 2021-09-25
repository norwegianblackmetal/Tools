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
  image  = "./CentOS-7-x86_64-DVD-2009.iso"
  cpus   = 2
  memory = "2048 mib"
  // user_data = "${file("user_data")}"


  network_adapter {
    type           = "bridged"
    host_interface = "en0"
  }


}

provider "virtualbox" {
  # Configuration options
}
