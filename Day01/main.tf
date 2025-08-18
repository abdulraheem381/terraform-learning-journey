# Configure the AWS provider
provider "aws" {
  region = "us-east-1"
}

# Create a simple EC2 instance
resource "aws_instance" "example" {
  ami           = "ami-08c40ec9ead489470" # Amazon Linux 2 AMI (us-east-1)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-First-Instance"
  }
}
