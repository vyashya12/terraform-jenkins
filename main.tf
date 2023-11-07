provider "vcd" {
  url                  = var.vcd_url
  api_token            = var.api_token
  allow_unverified_ssl = true
  user                 = "none"
  password             = "none"
  auth_type            = "api_token"
  sysorg               = "System"
  org                  = "MY1VMC2-DEMO"
  vdc                  = "MY1VMC2-DemoVDC"
}

resource "vcd_vapp_vm" "local_vm_test" {
  vapp_name     = "yash-vApp-provisioner"
  name          = var.vm_name
  org           = "MY1VMC2-DEMO"
  vdc           = "MY1VMC2-DemoVDC"
  computer_name = "MyFirstComputerVCD"
  description   = "The first VM for testing purposes"

  catalog_name  = "Templates"
  template_name = var.vm_os
  cpus          = 2
  memory        = 2048

  network {
    name               = "private"
    type               = "org"
    ip_allocation_mode = "MANUAL"
    ip                 = "10.10.10.12"
  }
}
