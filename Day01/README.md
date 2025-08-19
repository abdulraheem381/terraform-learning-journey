

# 🚀 Day 01 – Terraform with AWS

## 🌍 Overview

Today I started my **Terraform with AWS journey**.
The goal: understand Terraform basics and launch my **first EC2 instance** using Infrastructure as Code (IaC).

---

## 📚 What I Learned

* **Terraform Basics** → IaC tool to manage cloud infrastructure.
* **Installation** → Set up Terraform locally.
* **Core Commands**:

  * `terraform init` → Set up working directory.
  * `terraform plan` → Preview changes before applying.
  * `terraform apply` → Create infrastructure on AWS.

---

## 🛠️ Code Example

Here’s the configuration I wrote to spin up a simple EC2 instance:

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-0861f4e788f5069dd"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform-First-Instance"
  }
}
```

---

## ▶️ How to Run

```bash
terraform init
terraform plan
terraform apply
```

This will provision a **t2.micro EC2 instance** in AWS. 🎉

---

## 🔗 Follow My Journey

📖 Blogs: [Hashnode](https://abdulraheem.hashnode.dev) 
🐦 Updates: [X (Twitter)](https://x.com/Abdulraheem183)




