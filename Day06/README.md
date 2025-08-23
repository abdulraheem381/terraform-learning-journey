
# Day 06 - Create VPC and Deploy Nginx Server with Terraform  

This project demonstrates how to:  
- Create a **custom VPC** with public & private subnets  
- Attach an **Internet Gateway & Route Table**  
- Create **Security Groups** to allow HTTP traffic  
- Deploy an **EC2 instance** inside the VPC  
- Install and start **Nginx automatically** using User Data  
- Output the **public IP and URL** after deployment  

## 🛠 Steps to Run
```bash
terraform init
terraform plan
terraform apply
````

## 📌 Outputs

* Public IP of the EC2 instance
* URL to access the Nginx server

🎯 Once deployed, open the URL in your browser to see the Nginx welcome page.

📖 Blog 👉 [Day 06 – Building Your Own VPC, Deploying EC2, and Running Nginx with Terraform](https://abdulraheem.hashnode.dev/day-06-building-your-own-vpc-deploying-ec2-and-running-nginx-with-terraform)
🐦 Follow 👉 [X (Twitter)](https://x.com/Abdulraheem183) | [Hashnode](https://abdulraheem.hashnode.dev/) 


