# DEMO Terraform with DigitalOcean

## How to run

1. Copy **terraform.tfvars.example** to **terraform.tfvars**
2. Edit var in **terraform.tfvars**
3. `terraform init` to initialized or install module
4. `terraform plan` to use **main.tf** for create plan
5. `terraform apply` to use **main.tf** for create or update
6. `terraform destroy` for destroy **main.tf**

## How to get fingerprint

> `ssh-keygen -E md5 -lf ~/.ssh/<public_key>.pub | awk '{print $2}'`