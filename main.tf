variable "access_key" {}
variable "secret_key" {}
variable "token" {}
# variable "region" {}
# variable "ami" {}
# variable "instance_type" {}

provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  token      = var.token
  region     = "us-east-1"
}
resource "aws_instance" "web123" {
  ami           = "ami-09e67e426f25ce0d7"
  instance_type = "t2.micro"
  tags = {
    Name = "my-test-instance"
  }
}

output "public_dns" {
  value = aws_instance.web123.public_dns
}
