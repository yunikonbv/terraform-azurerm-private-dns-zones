# List of variables
variable "private_dns_zones" {
  type = map(object({
    resource_group_name = string
    virtual_network_links = list(object({
      name                = string
      resource_group_name = string
      virtual_network_id  = string
    }))
  }))
  default     = null
  description = "A map of variables to add Private DNS Zones and their respective Virtual Network links."
}

locals {}