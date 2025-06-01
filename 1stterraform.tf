resource "aws_instance" "web" {
  ami           = "ami-0953476d60561c955"
  instance_type = "t2.micro"
  key_name = "teraa"

  tags = {
    Name = "HelloWorld"
  }
}