# Exercice 3 | data source + http

## Objectif
Utiliser le provider HTTP de Terraform pour télécharger un fichier à partir d'une URL et le stocker localement. Le fichier se situe à l'adresse
suivante : https://cdn.wsform.com/wp-content/uploads/2018/09/country_full.csv

## Consignes
* Depuis votre dossier de projet Terraform, créez un sous-dossier d’exercice appelé exercice_3.
* À l'intérieur de ce dossier, créez un fichier main.tf pour définir le téléchargement et la sauvegarde du fichier.
* Créez une source de données data basée sur le fichier à télécharger.
* Créez une ressource local_file pour sauvegarder ce fichier localement sous le nom downloaded_file.txt.
* Exécutez les commandes nécessaires pour procéder au téléchargement du fichier.

## Ressources
https://registry.terraform.io/providers/hashicorp/http/latest/docs

## Commandes

```

terraform init -upgrade
terraform plan -var-file="terraform.tfvars" -out main.tfplan
terraform apply -var-file="terraform.tfvars" -auto-approve
terraform refresh

```
```
terraform.tfvars
file_permision = "0755"
file_name = "downloaded_file.txt"
file_content = "Bienvenue dans Terraform ! 2"
```