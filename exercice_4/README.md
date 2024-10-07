# Exercice 4 | multi providers

## Objectif
Utiliser Terraform pour générer un ensemble de 10 mots de passe aléatoires et les stocker dans un fichier local. Cet exercice vous permet
de travailler avec deux ressources Terraform où l'une dépend de l'autre : une ressource random pour générer des mots de passe et une
ressource local_file pour les sauvegarder

## Consignes
* Depuis votre dossier de projet Terraform, créez un sous-dossier d’exercice appelé exercice_4.
* À l'intérieur de ce dossier, créez un fichier main.tf pour définir les ressources.
* Utilisez la ressource adéquate du provider random pour générer 10 mots de passe aléatoires.
* Votre code doit contenir 2 ressources.
* Exécutez les commandes nécessaires pour procéder au téléchargement du fichier.

## Ressources
https://registry.terraform.io/providers/hashicorp/random/latest/docss
https://developer.hashicorp.com/terraform/language/meta-arguments/for_each

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
file_name = "pass.txt"
```