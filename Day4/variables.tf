variable "environment" {
  description = "The environment for the resources"
  type        = string
  default     = "staging"
}

variable "storage_disk" {
  type = number
  default = 30
  description = "The size of the storage disk in GB"
}

variable "is_delete" {
  type = bool
  default = true
  description = "Whether to delete the OS disk on termination"
}

variable "allowed_locations"  {
  type    = list(string)
  default = ["East Asia", "Southeast Asia", "Central US", "West Europe"]
  description = "List of allowed locations for the resources"
}

variable "resource_tags" {
  type = map(string)
  default = {
    environment = "staging"
    managed_by  = "terraform"
    department  = "DevOps"
  }
  description = "Tags to apply to the resources"
}

variable "network_config" {
  type = tuple([string, string, number])
  description = "Network configuration as a tuple: [VNET address_space, subnet address_space, subnet_size]"
  default = ["10.0.0.0/16", "10.0.2.0/24", 24]
}

variable "allowed_vm_sizes" {
  type = list(string)
  default = ["Standard_B2ts_v2", "Standard_DS1_v2", "Standard_D2s_v3"]
  description = "List of allowed VM sizes"
} 

variable "vm_config" {
  type = object({
    vm_size = string
    publisher = string
    offer = string 
    sku = string
    version = string
  })
  description = "VM configuration as an object with vm_size and os_disk_size_gb"
  default = {
    vm_size = "Standard_B2ts_v2"
    publisher = "Canonical"
    offer = "0001-com-ubuntu-server-jammy"
    sku = "22_04-lts"
    version = "latest"
  }
}