provider "aws" {
  region = "us-east-1"
}

# Example 1: Multiple Subnets with count
resource "aws_subnet" "count_example" {
  count             = 3
  vpc_id            = "vpc-12345678" # replace with your VPC ID
  cidr_block        = "10.0.${count.index}.0/24"
  availability_zone = element(["us-east-1a", "us-east-1b", "us-east-1c"], count.index)

  tags = {
    Name = "count-subnet-${count.index}"
  }
}

# Example 2: Multiple Subnets with for_each
variable "subnets" {
  default = {
    public  = "10.0.10.0/24"
    private = "10.0.20.0/24"
    db      = "10.0.30.0/24"
  }
}

resource "aws_subnet" "for_each_example" {
  for_each          = var.subnets
  vpc_id            = "vpc-12345678" # replace with your VPC ID
  cidr_block        = each.value
  availability_zone = "us-east-1a"

  tags = {
    Name = "${each.key}-subnet"
  }
}

# Example 3: Multiple EC2 instances with count
resource "aws_instance" "web" {
  count         = 3
  ami           = "ami-12345678" # replace with a valid AMI
  instance_type = "t2.micro"

  tags = {
    Name = "web-${count.index}"
  }
}

# Example 4: Multiple EC2 instances with for_each
variable "instances" {
  default = {
    ubuntu = "ami-12345678"
    amazon = "ami-87654321"
    debian = "ami-56781234"
  }
}

resource "aws_instance" "servers" {
  for_each      = var.instances
  ami           = each.value
  instance_type = "t2.micro"

  tags = {
    Name = "${each.key}-server"
  }
}
