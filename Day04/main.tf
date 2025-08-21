terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.8.0"
    }
  }

  backend "s3" {
    bucket = "mybucket-8964366a63341c51"
    key    = "backend-tfstate"
    region = "ap-south-1"
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "myserver" {
  ami           = "ami-0144277607031eca2"
  instance_type = "t2.micro"

  tags = {
    my = "server"
  }
}
