terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.9.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_s3_bucket" "example" {
  bucket = "${var.bucket_prefix}-${random_id.rand.hex}"

  tags = {
    Environment = var.environment
    Owner       = local.owner_name
  }
}

resource "random_id" "rand" {
  byte_length = 4
}
