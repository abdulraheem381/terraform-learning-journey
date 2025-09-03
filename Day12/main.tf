############################################################
# Day 12 – Terraform Data Sources Deep Dive
# This file demonstrates different data sources in AWS
############################################################

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.8.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

############################################################
# 1. Fetch Existing VPC
############################################################
data "aws_vpc" "default" {
  default = true
}

output "vpc_id" {
  value = data.aws_vpc.default.id
}

############################################################
# 2. Reuse an Existing Security Group
############################################################
data "aws_security_group" "default_sg" {
  filter {
    name   = "group-name"
    values = ["default"]
  }

  vpc_id = data.aws_vpc.default.id
}

output "security_group_id" {
  value = data.aws_security_group.default_sg.id
}

############################################################
# 3. Fetch AWS Account Info
############################################################
data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

output "caller_arn" {
  value = data.aws_caller_identity.current.arn
}

############################################################
# 4. Get Availability Zones
############################################################
data "aws_availability_zones" "available" {}

output "azs" {
  value = data.aws_availability_zones.available.names
}

############################################################
# 5. Fetch IAM Role
############################################################
# Make sure this role exists in your AWS account
data "aws_iam_role" "existing_role" {
  name = "MyExistingRole"
}

output "role_arn" {
  value = data.aws_iam_role.existing_role.arn
}

############################################################
# 6. Fetch Subnet by Tag
############################################################
# Make sure you have a subnet with tag Name=public-subnet
data "aws_subnet" "public_subnet" {
  filter {
    name   = "tag:Name"
    values = ["public-subnet"]
  }
}

output "subnet_id" {
  value = data.aws_subnet.public_subnet.id
}
