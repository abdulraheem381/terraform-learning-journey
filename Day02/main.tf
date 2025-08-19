provider "aws" {
  region = var.region
}

variable "region" {
  default = "us-east-1"
}

variable "instance_type" {
  default = "t2.micro"
}

resource "aws_instance" "example" {
  ami           = "ami-08c40ec9ead489470"
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-Instance-Variables"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "abdul-terraform-bucket-12345"
  
}
