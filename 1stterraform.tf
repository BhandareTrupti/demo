terraform {
  backend "s3" {
    bucket = "terraform-bucket555"     # ← NO trailing space
    region = "us-east-1"
    key    = "terraform.tfstate"
  }
}


provider "aws" {
  region = "us-east-1"
  
}
resource "aws_instance" "web" {
  ami           = "ami-0953476d60561c955"
  instance_type = var.instance_type
  key_name = "teraa"
  vpc_security_group_ids = ["sg-058736fc17770d20f"]

  tags = {
    Name = "HelloWorld"
  }
}

variable "instance_type" {
  default     = "t2.micro"
  description = "this is now basic instance"
}

output "instance_public_ip" {
  value = aws_instance.web.public_ip
}

