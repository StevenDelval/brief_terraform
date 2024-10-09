# brief_terraform

Cree e fichier .env avec :
```
RESOURCE_GROUP_NAME="de_p1_resource_group"
LOCATION="northeurope"
STORAGE_NAME="tfstatedataing"
NOM_BLOB_CONTAINER="tfstatesteven"
LOG_FILE_STORAGE="storage.log"
```

Cree le fichier terraform.tfvars avec :
 ```
resource_group_name = "de_p1_resource_group"
resource_group_location = "North Europe"
storage_account_name = "stevendataingpunaccount"
storage_container_name = "stevenstoragecontainer"
blob_name = "StevenBlob"
app_service_name = "stevenwebappdataing"
app_service_plan_name = "de_p1_service_plan"
network_interface_name = "delval_steven_nic"
username = "steven"
vm_name = "vm_steven"
```
Commande pour le brief 

```
cd brief
terraform init -upgrade
terraform plan -var-file="terraform.tfvars" 
terraform apply -var-file="terraform.tfvars" -auto-approve

```
Or
```
bash start_terraform.sh 
```