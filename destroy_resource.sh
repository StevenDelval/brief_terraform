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

cd brief
terraform destroy -auto-approve
cd ..
# Suppression du Containeur Blob
az storage container delete --name $NOM_BLOB_CONTAINER --account-name $STORAGE_NAME

if [ $? -eq 0 ]; then
    log_with_date "Container '$NOM_BLOB_CONTAINER' dans le compte de stockage '$STORAGE_NAME' a été supprimé avec succès."
else
    log_with_date "Problème lors de la suppression du container '$NOM_BLOB_CONTAINER' dans le compte de stockage '$STORAGE_NAME'."
fi

# Suppression du compte de stockage
az storage account delete \
  --name  $STORAGE_NAME \
  --resource-group $RESOURCE_GROUP_NAME \
  --yes
if [ $? -eq 0 ]; then
    log_with_date "Storage '$STORAGE_NAME' est en cours de suppression."

else
    log_with_date "Problème lors de la suppression du compte de stockage  '$STORAGE_NAME'."
    exit 1
fi

