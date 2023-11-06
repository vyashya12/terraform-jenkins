variable "vcd_url" {
  description = "vcd URL"
  type        = string
  sensitive   = true
  default     = "https://my1-dashboard.exabytes.cloud/api"
}
variable "api_token" {
  description = "API token"
  type        = string
  sensitive   = true
  default     = "Sn1bTTML83TDlz6kzLqIy3Mcr8e6QWu2"
}

variable "vm_name" {
  description = "Name of VM"
  type        = string
  default     = "yaashvmfromterrajen"
}
