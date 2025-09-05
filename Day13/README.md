
# Day 14 – Terraform Variables, Locals, and Outputs  

In this project, I explored how **variables, locals, and outputs** work in Terraform and why they are essential for writing clean, reusable, and maintainable code.  

## 🧑‍💻 What I Learned
- **Input Variables** – Reuse and customize infrastructure without hardcoding values.  
- **Validation** – Apply rules to variables (e.g., environment must be dev/staging/prod).  
- **Locals** – Create helper values to simplify complex expressions.  
- **Outputs** – Print important information (like bucket name or public IP) after `terraform apply`.  
- **Ways to Pass Variables**:  
  - Inside `terraform.tfvars` file  
  - Via command-line (`-var="key=value"`)  
  - Environment variables (`TF_VAR_key=value`)  

## 📂 Project Files
- `main.tf` → Defines AWS provider, S3 bucket, random ID.  
- `variables.tf` → Stores variables with defaults and validation.  
- `outputs.tf` → Displays bucket name and region after deployment.  

## 🚀 Run the Project
```bash
terraform init
terraform plan
terraform apply -auto-approve
````

## 📝 Example Output

```
bucket_name = "mybucket-1a2b3c4d"
region      = "ap-south-1"
```

---

## 🔗 Follow My Journey

I’m sharing my **Terraform learning journey daily**:

* 📂 [Terraform Learning Journey GitHub Repo](https://github.com/abdulraheem381/terraform-learning-journey)
* 🐦 [Follow me on X](https://x.com/Abdulraheem183)
* ✍️ [Read Complete Blog](https://abdulraheem.hashnode.dev/terraform-variables-locals-and-outputs-explained)


