# terraform-azurerm-private-dns-zone module

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
Terraform module.

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
  git clone https://github.com/yunikon-nl/terraform-azurerm-private-dns-zone.git modules/
  ```
4. Include this module in your Terraform code from the source
  ```hcl
  module {
    source = "modules/terraform-azurerm-private-dns-zone"
  }
  ```
5. Initialize your project to test the module
  ```sh
   terraform init
  ```

## Usage
_For more examples, please refer to the documentation._

## Roadmap
- [x] Add Changelog
- [x] Add License
- [ ] Do something else

See the [open issues](https://github.com/yunikon-nl/terraform-azurerm-private-dns-zone/issues) for a full list of proposed features (and known issues).

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


Project Link: [yunikon-nl/terraform-azurerm-private-dns-zone](https://github.com/yunikon-nl/terraform-azurerm-private-dns-zone)


## Acknowledgments