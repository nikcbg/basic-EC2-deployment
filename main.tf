provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "test" {
  ami           = "ami-085925f297f89fce1"
  instance_type = "t2.micro"
  tags = {
    Name = "nikolay-test-instance"
  }
}
