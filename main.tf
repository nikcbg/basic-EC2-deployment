# variable "access_key" {}
# variable "secret_key" {}
# variable "region" {}
# variable "ami" {}
# variable "instance_type" {}
# ami-085925f297f89fce1

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = var.region
}
resource "aws_instance" "web123" {
  ami           = var.ami
  instance_type = var.instance_type
  tags = {
    Name = "my-test-instance"
  }
}
