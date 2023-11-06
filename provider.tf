terraform {
  required_providers {
    vcd = {
      source  = "vmware/vcd"
      version = "3.7.0"
    }
  }
}

provider "vcd" {
  url                  = var.vcd_url
  api_token            = var.api_token
  allow_unverified_ssl = true
  user                 = "none"
  password             = "none"
  auth_type            = "api_token"
  sysorg               = "System"
  org                  = "SharedOrg-SG"
  vdc                  = "SG1shared01"
}