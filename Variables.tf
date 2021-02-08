# Azure Options
variable "azure_region" {
  default     = "uksouth" # Use region shortname here as it's interpolated into the URLs
  description = "The location/region where the resources are created."
}

variable "azure_rg_name" {
  default = "lab" # This will get a unique timestamp appended
  description = "Specify the name of the new resource group"
}

variable "source_address_prefix" {
  default = "*"
  description = "Provide an IP or subnet to restrict access. 1.2.3.4 or 1.2.3.0/24"
}


# Shared Options

variable "username" {
  default = "labadmin"
  description = "Admin username for all VMs"
}

variable "password" {
  default = "P@ssw0rd1234!"
  description = "Admin password for all VMs"
}

variable "vm_size" {
  default = "Standard_DS1_v2"
  description = "Specify the VM Size"
}

variable "server_name" {
  default = "win-cms"
  description = "Specify the hostname for the Chef server"
}
