
# Day 15 – Creating Multiple Resources in Terraform (`count` & `for_each`)

This project demonstrates how to use **`count`** and **`for_each`** meta-arguments in Terraform to create multiple resources dynamically.

---

## 🚀 What You’ll Learn
- How to use `count` to create multiple identical resources.
- How to use `for_each` to create resources with unique names and values.
- Examples with **Subnets** and **EC2 Instances**.

---

## 📂 Examples Included
1. **Multiple Subnets with `count`**
   - Creates 3 subnets in different availability zones.
2. **Multiple Subnets with `for_each`**
   - Creates named subnets (public, private, db) with different CIDRs.
3. **Multiple EC2 Instances with `count`**
   - Launches 3 identical EC2 instances.
4. **Multiple EC2 Instances with `for_each`**
   - Launches EC2 instances with different AMIs (Ubuntu, Amazon Linux, Debian).

---

## ▶️ How to Use
1. Clone the repo:
   ```bash
   git clone https://github.com/your-username/Day15-Multiple-Resources.git
   cd Day15-Multiple-Resources


2. Initialize Terraform:

   ```bash
   terraform init
   ```
3. Plan and apply:

   ```bash
   terraform plan
   terraform apply
   ```

## 🔗 Follow My Journey

* 📖 Full blog series on Hashnode: [Terraform with AWS](https://your-hashnode-link)
* 💻 GitHub Repo: [Terraform Projects](https://github.com/your-username/Terraform-Learning-Journey)
* 🐦 X (Twitter): [@YourHandle](https://twitter.com/yourhandle)


