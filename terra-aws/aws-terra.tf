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


# launch ec2 server
resource "aws_instance" "aws_demo" {
	ami = "ami-0fc5d935ebf8bc3bc"
	instance_type = "t2.micro"
	tags = {
		Name = "test1-instnce"
}
}

output "ec_info" {
	value = aws_instance.aws_demo[*].public_ip
}

resource "aws_s3_bucket" "mytestbucket" {
  bucket = "terra-bucket-terro"

  tags = {
    Name        = "terra bucket"
    Environment = "Dev"
  }
}
