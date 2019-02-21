resource "azurerm_network_security_group" "nsg_web" {
  name = "WV-Terraform-Web-NSG"
  location = "${var.location}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"

  security_rule {
    name = "AllowSSH"
    priority = 100
    direction = "Inbound"
    access         = "Allow"
    protocol = "Tcp"
    source_port_range       = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

  tags {
    group = "${var.resource_group_name}"
  }
}
