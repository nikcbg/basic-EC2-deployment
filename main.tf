variable "access_key" {}
variable "secret_key" {}
# variable "region" {}
# variable "ami" {}
# variable "instance_type" {}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region = "us-east-1"
}
resource "aws_instance" "web123" {
  ami           = "ami-085925f297f89fce1"
  instance_type = "t2.micro"
  tags = {
    Name = "my-test-instance"
  }
}
