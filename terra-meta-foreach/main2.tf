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

locals {
	instance = {"test1":"ami-079db87dc4c10ac91","test12":"ami-023c11a32b0207432","test123":"ami-079db87dc4c10ac91"}
}

resource "aws_instance" "aws_demo" {
        for_each = local.instance
        ami = each.value
        instance_type = "t2.micro"
        tags = {
                Name = each.key
}
}

