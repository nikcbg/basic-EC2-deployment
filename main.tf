
provider "aws" {
  region     = "us-east-1"
}
resource "aws_instance" "test" {
  ami           = "ami-0747bdcabd34c712a"
  instance_type = "t2.micro"
  tags = {
    Name = "nik-test-instance"
  }
}

output "public_dns" {
  value = aws_instance.test.public_dns
}
