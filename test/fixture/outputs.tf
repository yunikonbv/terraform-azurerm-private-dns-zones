# Test output for your Terraform module
output "private_dns_zones" {
  value = module.terraform-azurerm-private-dns-zone.private_dns_zones
}