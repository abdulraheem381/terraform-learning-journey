terraform {
  required_version = ">= 1.6.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.9.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }
}

provider "aws" {
  region = var.region
}

# ---------- Variables ----------
variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}

variable "bucket_name_prefix" {
  description = "Prefix for S3 bucket name"
  type        = string
  default     = "abdul-hcl-demo"
  validation {
    condition     = length(var.bucket_name_prefix) >= 3
    error_message = "Prefix must be at least 3 characters."
  }
}

# ---------- Locals ----------
locals {
  name_prefix = "hcl101"
  common_tags = {
    Project = "Terraform-HCL"
    Owner   = "Abdul Raheem"
    Env     = "dev"
  }
}

# ---------- Data sources ----------
data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter { name = "name", values = ["amzn2-ami-hvm-*-x86_64-gp2"] }
  filter { name = "virtualization-type", values = ["hvm"] }
}

# ---------- Resources ----------
resource "random_id" "suffix" {
  byte_length = 2
}

resource "aws_s3_bucket" "demo" {
  bucket = "${var.bucket_name_prefix}-${random_id.suffix.hex}"

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-bucket"
  })
}

resource "aws_instance" "demo" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              yum install -y nginx
              systemctl enable nginx
              systemctl start nginx
              echo "<h1>HCL Demo: ${local.name_prefix}</h1>" > /usr/share/nginx/html/index.html
              EOF

  tags = merge(local.common_tags, {
    Name = "${local.name_prefix}-ec2"
  })
}

# ---------- Outputs ----------
output "bucket_name" {
  description = "Created S3 bucket"
  value       = aws_s3_bucket.demo.bucket
}

output "ec2_public_ip" {
  description = "Public IP of the EC2 instance"
  value       = aws_instance.demo.public_ip
}


