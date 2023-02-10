resource "azurerm_private_dns_zone" "private_dns_zones" {
  for_each = var.private_dns_zones

  name                = each.key
  resource_group_name = each.value.resource_group_name
  tags                = {}
}

resource "azurerm_private_dns_zone_virtual_network_link" "main" {
  for_each = {
    for zone in local.zones_and_links : "${zone.dns_key}.${zone.link_key}" => zone
  }

  name                  = each.value.name
  resource_group_name   = each.value.resource_group_name
  private_dns_zone_name = replace(each.key, "/\\.[^.]*$/", "")
  virtual_network_id    = each.value.virtual_network_id
}

locals {
  # flatten ensures that this local value is a flat list of objects, rather
  # than a list of lists of objects.
  zones_and_links = flatten([
    for dns_key, dns_value in var.private_dns_zones : [
      for link_key, link_value in dns_value.virtual_network_links : {
        dns_key               = dns_key
        link_key              = link_key
        name                  = link_value.name
        resource_group_name   = link_value.resource_group_name
        virtual_network_id    = link_value.virtual_network_id
        private_dns_zone_name = dns_key
      }
    ]
  ])
}