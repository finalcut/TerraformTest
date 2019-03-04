provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region = "${var.region}"
}
resource "aws_instance" "demo" {
  instance_id = "${var.vm_id}"
  ami = "ami-b374d5a5"
  instance_type = "t2.micro"
  provisioner "local-exec"{
    command = "echo ${aws_instance.demo.public_ip}"
  }
  tags = {
    Name = "${var.vm_name}"
    McCoeId = "${var.vm_id}"
  }
}
resource "aws_eip" "ip" {
  instance = "${aws_instance.demo.id}"
}
