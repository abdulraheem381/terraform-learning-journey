terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.9.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

# 1. Fetch existing VPC
data "aws_vpc" "default" {
  default = true
}

# 2. Fetch existing Security Group by name
data "aws_security_group" "default_sg" {
  filter {
    name   = "group-name"
    values = ["default"]
  }

  vpc_id = data.aws_vpc.default.id
}

# 3. Fetch latest Amazon Linux 2 AMI
data "aws_ami" "amazon_linux" {
  most_recent = true

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["amazon"]
}

# 4. Launch EC2 using the data sources
resource "aws_instance" "example" {
  ami                         = data.aws_ami.amazon_linux.id
  instance_type               = "t2.micro"
  subnet_id                   = data.aws_vpc.default.id
  vpc_security_group_ids      = [data.aws_security_group.default_sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
              #!/bin/bash
              sudo yum install nginx -y
              sudo systemctl start nginx
              EOF

  tags = {
    Name = "Day07-DataSource-EC2"
  }
}

# Outputs
output "instance_ip" {
  value = aws_instance.example.public_ip
}

output "instance_url" {
  value = "http://${aws_instance.example.public_ip}"
}
