variable "access_key" {
  description = "Access key provided by AWS"
}
variable "secret_key" {
  description = "Secret key provided by AWS"
}
variable "region" {
  default = "us-east-1"
}
variable "vm_name" {
  description = "Name of Virtual Machine"
}

variable "vm_id" {
  default = "GUID issued by API via MongoDb"
}