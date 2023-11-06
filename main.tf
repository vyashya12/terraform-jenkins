resource "vcd_vapp_vm" "terraform-vm-launch" {
  vapp_name     = "yash-vApp-provisioner"
  name          = var.vm_name
  org           = "MY1VMC2-DEMO"
  vdc           = "MY1VMC2-DemoVDC"
  computer_name = "MyFirstComputerVCD"
  description   = "The first VM for testing purposes"

  catalog_name  = "Templates"
  template_name = "Ubuntu20TLS"
  cpus          = 2
  memory        = 2048

  network {
    name               = "private"
    type               = "org"
    ip_allocation_mode = "MANUAL"
    ip                 = "10.10.10.12"
  }
}
