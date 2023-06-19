terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

  backend "s3" {
    bucket         = "remote-demo-bucket-180623"
    key            = "terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "remote-demo-dynamodb-table"
  }

}


