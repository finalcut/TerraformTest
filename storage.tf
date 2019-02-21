resource "azurerm_storage_account" "wv_storage" {
  name = "wvterraform1"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  location = "${var.location}"
  account_type = "Standard_LRS"

  tags {
    group = "${var.resource_group_name}"
  }
}

resource "azurerm_storage_container" "wv_cont" {
  name = "vhds"
  resource_group_name = "${azurerm_resource_group.terraform_rg.name}"
  storage_account_name = "${azurerm_storage_account.wv_storage.name}"
  container_access_type = "private"
}