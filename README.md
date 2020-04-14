# DEMO Terraform

## How to run
1. Copy **terraform.tfvars.example** to **terraform.tfvars**
2. Edit var in **terraform.tfvars**
3. `terraform plan` for use **main.tf**
4. `terraform apply` for use **main.tf**
5. `terraform destroy` for destroy **main.tf**

## How to get fingerprint

> `ssh-keygen -E md5 -lf ~/.ssh/<public_key>.pub | awk '{print $2}'`