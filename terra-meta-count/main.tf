terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "aws_demo" {
	count = 4
	ami = "ami-0fc5d935ebf8bc3bc"
        instance_type = "t2.micro"
        tags = {
                Name = "Instnce-test-${count.index}"
}
}
	

