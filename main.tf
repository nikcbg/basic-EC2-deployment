
provider "aws" {
  region     = "us-east-1"
}
resource "aws_instance" "test1" {
  ami           = "ami-0747bdcabd34c712a"
  instance_type = "t2.micro"
 # tags = {
 #   Name = "nik-test-instance"
#  }
}

output "public_dns" {
  value = aws_instance.test1.public_dns
}
