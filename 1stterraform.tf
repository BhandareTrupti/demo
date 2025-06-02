terraform {
  backend "s3" {
    bucket = "terraform-bucket555 "
    region = "us-east-1"
    
  }
}

provider "aws" {
  region = "us-east-1"
  
}
resource "aws_instance" "web" {
  ami           = "ami-0953476d60561c955"
  instance_type = "t2.micro"
  key_name = "teraa"
  vpc_security_group_ids = ["sg-058736fc17770d20f"]

  tags = {
    Name = "HelloWorld"
  }
}