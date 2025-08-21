
# 🚀 Terraform with AWS – Day 03  

Today’s project: Building a **VPC with Public & Private Subnets** in AWS using Terraform.  
This is the foundation of secure cloud networking.  

---

## 📂 Project Structure
```

.
├── main.tf    # Terraform code for VPC, Subnets, IGW, Route Table
├── README.md  # Documentation

````

---

## 🛠️ What’s Inside?
- VPC (`10.0.0.0/16`)
- Public Subnet (`10.0.2.0/24`) → Internet-facing
- Private Subnet (`10.0.1.0/24`) → Internal workloads
- Internet Gateway
- Route Table + Association

---

## ▶️ Terraform Commands
```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
````

---

## ✅ Key Learnings

* A VPC is the backbone of AWS networking.
* Public subnets are for web servers and external apps.
* Private subnets keep sensitive resources secure.
* Route tables + gateways define traffic flow.

---

📖 Blog 👉 [Day 03 – VPC with Public & Private Subnets](https://abdulraheem.hashnode.dev/day-03-building-a-vpc-with-public-and-private-subnets-in-terraform)
🐦 Follow 👉 [X (Twitter)](https://x.com/Abdulraheem183) | [Hashnode](https://abdulraheem.hashnode.dev/) 




