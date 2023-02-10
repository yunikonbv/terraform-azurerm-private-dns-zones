# Test code for your Terraform module
resource "azurerm_virtual_network" "main" {
  name                = "test-terraform-azurerm-private-dns-zone"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.0.0.0/8"]
}

resource "azurerm_virtual_network" "secondary" {
  name                = "test-terraform-azurerm-secondary-private-dns-zone"
  location            = "westeurope"
  resource_group_name = azurerm_resource_group.main.name
  address_space       = ["10.0.0.0/8"]
}

resource "azurerm_resource_group" "main" {
  name     = "test-terraform-azurerm-private-dns-zone"
  location = "westeurope"
}

module "terraform-azurerm-private-dns-zone" {
  source = "../.."

  private_dns_zones = {
    "privatelink.test.io" = {
      resource_group_name = azurerm_resource_group.main.name
      virtual_network_links = [{
        name                = "firstlink"
        resource_group_name = azurerm_virtual_network.main.resource_group_name
        virtual_network_id  = azurerm_virtual_network.main.id
        },
        {
          name                = "secondlink"
          resource_group_name = azurerm_virtual_network.secondary.resource_group_name
          virtual_network_id  = azurerm_virtual_network.secondary.id
      }]
    }
    "privatelink.test.nl" = {
      resource_group_name = azurerm_resource_group.main.name
      virtual_network_links = [{
        name                = "firstlink"
        resource_group_name = azurerm_virtual_network.main.resource_group_name
        virtual_network_id  = azurerm_virtual_network.main.id
      }]
    }
  }
}