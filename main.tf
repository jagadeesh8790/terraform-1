terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}


provider "aws" {
  	shared_credentials_files = ["C:\Users\admin\.aws"]
	region = "ap-south-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0b99c7725b9484f9e"
  instance_type = "t2.micro"
}
