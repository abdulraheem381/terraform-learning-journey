
# Day 04 – Terraform tfstate & Remote Storage in S3

This project demonstrates how to manage the Terraform `tfstate` file by storing it remotely in an **AWS S3 bucket** instead of keeping it locally.

## 📌 What’s Covered
- What is `terraform.tfstate`
- Why remote state is important
- How to configure S3 backend
- Deploying a demo EC2 instance

## 🚀 Usage
```sh
terraform init
terraform plan
terraform apply
````

Terraform will automatically save the state file to the configured **S3 bucket**.

## 🛡️ Best Practices

* Always use remote state for team projects
* Enable S3 versioning for rollback safety
* Use DynamoDB for state locking (to prevent race conditions)

---

📖 Blog Post: [Hashnode](https://abdulraheem.hashnode.dev/terraform-aws-day-04-understanding-tfstate-file-and-remote-storage-in-s3)
🐦 Follow Updates: [X (Twitter)](https://x.com/Abdulraheem183)

```

