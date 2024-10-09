# brief_terraform

Commande pour le brief 

```
cd brief
terraform init -upgrade
terraform plan -var-file="terraform.tfvars" 
terraform apply -var-file="terraform.tfvars" -auto-approve

```