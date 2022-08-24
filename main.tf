terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
  }
}

provider "aws" {
  region     = "ap-south-1"
}

resource "aws_instance" "my-ubuntu1" {
  ami           = "ami-02b401fea53d5bc05"
  instance_type = "t2.micro"
}

resource "aws_eip" "myip" {
  instance = aws_instance.my-ubuntu1.id
}
