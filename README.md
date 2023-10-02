# Terraform Module terraform-azurerm-private-dns-zones

<a name="readme-top"></a>

<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
  </ol>
</details>

## About The Project
Terraform module for creating Private DNS Zones and Virtual Network links.

## Getting Started
To get a local copy up and running, follow these simple example steps.

### Prerequisites
* Terraform: [learn.hashicorp.com: Install Terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)

### Installation

#### Remote
1. Include this module in your Terraform code from the source
  ```hcl
  module {
    source = "github.com/yunikon-nl/terraform-azurerm-private-dns-zone"
  }
  ```
2. Initialize your project to download the module
  ```sh
  terraform init
  ```

#### Local
1. Go into your local Terraform project
  ```sh
  cd /my/terraform/project
  ```
2. Create a modules/ folder:
  ```sh
  mkdir modules/
  ```
3. Clone the repo
  ```sh
  git clone https://github.com/yunikon-nl/terraform-azurerm-private-dns-zones.git modules/
  ```
4. Include this module in your Terraform code from the source
  ```hcl
  module {
    source = "modules/terraform-azurerm-private-dns-zones"
  }
  ```
5. Initialize your project to test the module
  ```sh
   terraform init
  ```

## Usage
[//]: # (BEGIN_TF_DOCS)
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | >= 3.0.0, < 4.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | >= 3.0.0, < 4.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_private_dns_zone.private_dns_zones](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone) | resource |
| [azurerm_private_dns_zone_virtual_network_link.main](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_dns_zone_virtual_network_link) | resource |
| [azurerm_client_config.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/client_config) | data source |
| [azurerm_subscription.current](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subscription) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_private_dns_zones"></a> [private\_dns\_zones](#input\_private\_dns\_zones) | A map of variables to add Private DNS Zones and their respective Virtual Network links. | <pre>map(object({<br>    resource_group_name = string<br>    virtual_network_links = list(object({<br>      name                = string<br>      resource_group_name = string<br>      virtual_network_id  = string<br>    }))<br>  }))</pre> | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_private_dns_zones"></a> [private\_dns\_zones](#output\_private\_dns\_zones) | List of outputs |

[//]: # (END_TF_DOCS)

## Roadmap
- [x] Add Changelog
- [x] Add License
- [ ] Do something else

See the [open issues](https://github.com/yunikon-nl/terraform-azurerm-private-dns-zones/issues) for a full list of proposed features (and known issues).

## Contributing
Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are **greatly appreciated**.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement".
Don't forget to give the project a star! Thanks again!

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License
See [LICENSE.md](LICENSE.md) for more information.

## Contact
This code base is owned by Yunikon.


* Email: [code@yunikon.nl](mailto:code@yunikon.nl)


Project Link: [yunikon-nl/terraform-azurerm-private-dns-zones](https://github.com/yunikon-nl/terraform-azurerm-private-dns-zones)