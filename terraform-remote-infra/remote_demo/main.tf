provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "test_tf_instance" {
  ami           = "ami-057752b3f1d6c4d6c"
  instance_type = "t2.micro"
  tags = {
    Name = "Instance_1"
  }
}
