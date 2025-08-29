
# Day 09 — HCL (HashiCorp Configuration Language) Deep Dive

Today I explored how Terraform's HCL works and how each block fits together:
- `terraform` → versions & providers
- `provider` → cloud config
- `variable` / `locals` → inputs & reusable values
- `data` → fetch existing resources
- `resource` → create/update infra
- `output` → expose results
- `module` → reuse/version infra

## 🧪 What the demo creates
- S3 bucket with a random suffix
- EC2 instance (Amazon Linux 2) with Nginx installed via user data
- Outputs: bucket name and instance public IP

## ▶️ Usage
```bash
terraform init
terraform plan
terraform apply
# ...copy the URL/IP from outputs
terraform destroy
````

> ⚠️ AWS costs are typically minimal here (t2.micro + 1 S3 bucket), but always clean up with `terraform destroy`.

## 📝 Notes

* AMI is resolved dynamically with a `data "aws_ami"` query (no console lookup).
* Tags come from `locals` and are merged into resources.
* Example `module` block is shown in the blog; keep modules version-pinned.

## 📚 Learn more

* Terraform Language: [https://developer.hashicorp.com/terraform/language](https://developer.hashicorp.com/terraform/language)
* AWS Provider Docs: [https://registry.terraform.io/providers/hashicorp/aws/latest](https://registry.terraform.io/providers/hashicorp/aws/latest)

