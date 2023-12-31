variable "vcd_url" {
  description = "vcd URL"
  type        = string
  sensitive   = true
}
variable "api_token" {
  description = "API token"
  type        = string
  sensitive   = true
}

variable "vm_name" {
  description = "Name of VM"
  type        = string
}

variable "vm_os" {
  description = "OS of the VM"
  type        = string
}
