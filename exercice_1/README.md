# Exercice 1 | fichier local

## Objectif
Prendre en main Terraform en créant un fichier local sur votre machine avec du contenu spécifique et en définissant les droits sur ce fichier.

## Consignes
* Depuis votre dossier de projet Terraform, créez un sous-dossier d’exercice appelé exercice_1.
* À l'intérieur de ce dossier, créez un fichier main.tf pour définir votre première ressource.
* Créez une ressource local_file qui génère un fichier texte appelé hello_world.txt avec le contenu : "Bienvenue dans Terraform !".
* Ajoutez également des arguments pour définir les permissions de lecture et écriture sur le fichier (ex: 0755).
* Exécutez les commandes nécessaires pour obtenir la création du fichier local.

## Ressources
https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file

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
```