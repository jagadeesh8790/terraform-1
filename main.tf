terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"

    }
  }
}

provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIAYH4Y7SQAB7MLFDIB"
  secret_key = "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"
}

resource "aws_instance" "my-UBUNTU"{
	ami = "ami-02b401fea53d5bc05"
	insatnce_type = "t2.micro"
}

resource "aws_eip" "myip"{
	instance = "${aws_instance.my-UBUNTU.id}"
}
