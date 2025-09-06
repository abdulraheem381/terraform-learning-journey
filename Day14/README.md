# Day 14 – Terraform Expressions and Functions

In this day of my **Terraform Learning Journey**, I explored how **expressions** and **functions** work in Terraform.

## 📘 What I Learned
- **Expressions** allow us to write dynamic values like string interpolation, conditional logic, and workspace-based naming.
- **Functions** give us powerful built-in helpers like `upper()`, `format()`, and `length()` to make code reusable and flexible.

## 📂 Files
- `main.tf` → Terraform config with examples of expressions & functions
- `variables.tf` → Input variables for customization
- `outputs.tf` → Useful outputs for verification

## 🚀 How to Run
```bash
terraform init
terraform apply
```

Perfect 👍 Let’s create the GitHub structure for **Day 14 – Terraform Expressions and Functions**.

### 📂 Folder Structure

```
Day14-Expressions-Functions/
├── main.tf
├── variables.tf
├── outputs.tf
└── README.md
```

---

### `main.tf`

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.9.0"
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
```

---

### `variables.tf`

```hcl
variable "project_name" {
  description = "Project name"
  type        = string
  default     = "day14demo"
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "ap-south-1"
}
```

---

### `outputs.tf`

```hcl
output "bucket_name_expression" {
  description = "S3 bucket created using expression"
  value       = aws_s3_bucket.example.bucket
}

output "bucket_name_function" {
  description = "S3 bucket created using functions"
  value       = aws_s3_bucket.with_function.bucket
}
```

---

### `README.md`

````markdown
# Day 14 – Terraform Expressions and Functions

In this day of my **Terraform Learning Journey**, I explored how **expressions** and **functions** work in Terraform.

## 📘 What I Learned
- **Expressions** allow us to write dynamic values like string interpolation, conditional logic, and workspace-based naming.
- **Functions** give us powerful built-in helpers like `upper()`, `format()`, and `length()` to make code reusable and flexible.

## 📂 Files
- `main.tf` → Terraform config with examples of expressions & functions
- `variables.tf` → Input variables for customization
- `outputs.tf` → Useful outputs for verification

## 🚀 How to Run
```bash
terraform init
terraform apply
````

## 🔗 Follow My Journey

* 📖 Blog: [Hashnode Blog](https://abdulraheem.hashnode.dev/day-14-mastering-expressions-and-functions-in-terraform)
* 🐦 Twitter (X): [My profile](https://x.com/Abdulraheem183)
* 💻 GitHub: [Terraform Learning Journey](https://github.com/abdulraheem381)

