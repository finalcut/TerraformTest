/* Configure Azure Provider and declare all the Variables that will be used in Terraform configurations */
provider "azurerm" {
  subscription_id = "fab16bf0-7ccb-4903-8715-b97561451d2c"
  client_id = "d80e1680-4373-4a06-a58d-371cd530f29d"
  client_secret = "${var.client_secret}"
  tenant_id = "27654375-b435-4a86-b6f2-6c7b8d5f563e"
}

variable "subscription_id" {
  description = "Enter Subscription ID for provisioning resources in Azure"
}

variable "client_id" {
  description = "Enter Client ID for Application created in Azure AD"
}

variable "client_secret" {
  description = "Enter Client secret for Application in Azure AD"
}

variable "tenant_id" {
  description = "Enter Tenant ID / Directory ID of your Azure AD. Run Get-AzureSubscription to know your Tenant ID"
}

variable "location" {
  description = "The default Azure region for the resource provisioning"
}

variable "resource_group_name" {
  description = "Resource group name that will contain various resources"
}

variable "vnet_cidr" {
  description = "CIDR block for Virtual Network"
}

variable "subnet1_cidr" {
  description = "CIDR block for Subnet within a Virtual Network"
}

variable "vm_id" {
  description = "Enter id from the MCCoE stack"
}

variable "vm_name" {
  description = "Enter name for the Linux VM"
}

variable "vm_username" {
  description = "Enter admin username to SSH into Linux VM"
}

variable "vm_password" {
  description = "Enter admin password to SSH into VM"
}