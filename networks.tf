resource "azurerm_resource_group" "terraform_rg" {
  name = "${var.resource_group_name}"
  location = "${var.location}"
}

resource "azurerm_virtual_network" "wv_vnet" {
  name = "WV-Terraform-VNet"
  address_space = ["${var.vnet_cidr}"]  location = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.terraform_rg.name}"

  tags {
    group = "${var.resource_group_name}"
  }
}

resource "azurerm_subnet" "wv_subnet_1" {
  name = "WV-Subnet-1"
  address_prefix = "${var.subnet1_cidr}"
  virtual_network_name = "${azurerm_virtual_network.wv_vnet.name}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
}
