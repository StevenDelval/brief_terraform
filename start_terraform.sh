#!/bin/bash

# Activer l'exportation des variables d'environnement
set -o allexport
if [ -f .env ]; then
  source .env
else
  echo "Erreur : fichier .env non trouvé."
  exit 1
fi
set +o allexport

# Fonction pour enregistrer les logs avec la date
log_with_date() {
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE_STORAGE
}


# Creation du compte de stockage
az storage account create \
  --name  $STORAGE_NAME \
  --resource-group $RESOURCE_GROUP_NAME \
  --location $LOCATION \
  --sku Standard_LRS \
  --kind StorageV2 \
  --encryption-services blob

if [ $? -eq 0 ]; then
    log_with_date "Storage '$STORAGE_NAME' dans le groupe de ressources '$RESOURCE_GROUP_NAME' créé dans la localisation '$LOCATION'."
else
    log_with_date "Problème lors de la creation du compte de stockage  '$STORAGE_NAME'."
    exit 1
fi
# Creation du Containeur Blob 
az storage container create --name $NOM_BLOB_CONTAINER --account-name $STORAGE_NAME
if [ $? -eq 0 ]; then
    log_with_date "Container '$NOM_BLOB_CONTAINER' dans le compte de stockage '$STORAGE_NAME' cree."
else
    log_with_date "Problème lors de la creation du container '$NOM_BLOB_CONTAINER' dans le compte de stockage '$STORAGE_NAME'."
    exit 1
fi

cd brief
terraform init -upgrade
terraform apply -var-file="terraform.tfvars" -auto-approve