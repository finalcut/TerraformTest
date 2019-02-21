resource "azurerm_public_ip" "la_pip" {
  name = "WV-Terraform-PIP"
  location = "${var.location}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation = "static"

  tags {
    group = "${var.resource_group_name}"
  }
}

resource "azurerm_network_interface" "public_nic" {
  name       = "WV-Terraform-Web"
  location       = "${var.location}"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  network_security_group_id = "${azurerm_network_security_group.nsg_web.id}"

  ip_configuration {
    name = "WV-Terraform-WebPrivate"
    subnet_id = "${azurerm_subnet.wv_subnet_1.id}"
    private_ip_address_allocation = "dynamic"
    public_ip_address_id= "${azurerm_public_ip.la_pip.id}"
  }
  tags {
    group = "${var.resource_group_name}"
  }
}

resource "azurerm_public_ip" "la_db_pip" {
  name                  = "WV-Terraform-DB-PIP"
  location              = "${var.location}"
  resource_group_name   = "${azurerm_resource_group.terraform_rg.name}"
  public_ip_address_allocation = "static"

  tags {
    group = "${var.resource_group_name}"
  }
}
