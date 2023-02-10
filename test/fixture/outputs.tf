# Test output for your Terraform module
output "terraform-azurerm-private-dns-zone_name" {
  value       = module.terraform-azurerm-private-dns-zone.name
  description = "name output to test in Terratest."
}