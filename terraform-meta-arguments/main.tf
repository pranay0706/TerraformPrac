terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }
  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "ap-south-1"
}

locals {
  # instances = toset(["Michaelangelo", "Donatello"])
  instances = { "Michaelangelo" : "ami-0f5ee92e2d63afc18", "Donatello" : "ami-049a62eb90480f276" }
}

resource "aws_instance" "aws_ec2_test" {
  # count         = 2
  for_each      = local.instances
  ami           = each.value
  instance_type = "t2.micro"
  tags = {
    Name = each.key
  }
}
