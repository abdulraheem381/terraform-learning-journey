terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.11.0"
    }
  }
}

provider "aws" {
  region = var.region
}

# Example of expressions
resource "aws_s3_bucket" "example" {
  bucket = "${var.project_name}-${terraform.workspace}"

  tags = {
    Name        = var.project_name
    Environment = terraform.workspace
  }
}

# Example of functions
locals {
  upper_project = upper(var.project_name)
  bucket_name   = format("%s-%s", var.project_name, random_integer.rand.result)
}

resource "random_integer" "rand" {
  min = 100
  max = 999
}

resource "aws_s3_bucket" "with_function" {
  bucket = local.bucket_name
}
