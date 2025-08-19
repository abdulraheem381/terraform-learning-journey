# 🚀 Day 02 – Terraform with AWS (Providers, Resources & Variables)

## 📚 Overview
On Day 02 of my Terraform journey, I learned how to use:
- **Providers** → connect Terraform with AWS.
- **Resources** → define infrastructure (EC2, S3).
- **Variables** → make code flexible and reusable.

## 🛠 Example Code
```hcl
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
  acl    = "private"
}
````

## ▶️ Terraform Commands

```bash
terraform init       # initialize project
terraform validate   # validate configuration
terraform plan       # preview changes
terraform apply      # create infrastructure
terraform destroy    # delete infrastructure
```

## 🔗 Follow My Journey

📖 Blog: [Hashnode](https://abdulraheem.hashnode.dev/series/terraform-with-aws) 
💻 Code: [GitHub](#)
🐦 Updates: [X (Twitter)](https://x.com/Abdulraheem183)

```


