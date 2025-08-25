# Day 07 – Using Data Sources in Terraform (VPC, Security Groups & AMI)

Today I learned about **Terraform Data Sources**, which let us fetch existing AWS resources dynamically instead of hardcoding IDs.

## 🚀 What I Did
- Fetched existing **VPC** using `data "aws_vpc"`.
- Fetched an existing **Security Group** by name.
- Pulled the latest **Amazon Linux 2 AMI** from AWS.
- Deployed an **EC2 instance** with **Nginx** installed via `user_data`.

## 📂 Files
- `main.tf` → Terraform configuration for EC2 with Data Sources.

## 📝 Key Learnings
- Data sources make Terraform **dynamic** (no manual IDs).  
- Always use data sources for **AMI lookups**.  
- Keeps code **clean, reusable, and future-proof**.

## 🌐 Outputs
- Public IP of the instance
- Auto-generated URL: `http://<instance_ip>`

## 🔗 Resources
- [Official Terraform Docs on Data Sources](https://developer.hashicorp.com/terraform/docs)

---

👉 Follow my 100 Days of Terraform Journey:  
- GitHub: [Terraform-Learning](https://github.com/abdulraheem381/terraform-learning-journey)  
- X (Twitter): [@Abdulraheem183](https://x.com/Abdulraheem183)  
- Blog: [Hashnode Blog](https://abdulraheem.hashnode.dev/day-07-using-data-sources-in-terraform-vpc-security-groups-and-ami)

