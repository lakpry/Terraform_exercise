terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.59.0"
    }
  }
}

provider "aws" {
  region = "us-west-2"
   }

resource "aws_instance" "web" {
  ami = "ami-0df24e148fdb9f1d8"
   instance_type          = "t3.micro"
  key_name               = "Mykeypair"
  associate_public_ip_address = true
  
  tags = {
    Name = "my_vm"
  }
}
