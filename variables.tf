variable "access_key" {}
variable "secret_key" {}
variable "region" {
  default = "us-east-1"
}
variable "vm_name" {
  description = "Name of Virtual Machine"
}

variable "vm_id" {
  default = "GUID issued by API via MongoDb"
}