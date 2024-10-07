# Exercice 2 | variables

## Objectif
Découvrir l'utilisation des variables dans Terraform pour rendre la configuration flexible. Vous allez créer un fichier dont le nom et le contenu
seront définis par des variables.

## Consignes
* Depuis votre dossier de projet Terraform, créez un sous-dossier d’exercice appelé exercice_2.
* À l'intérieur de ce dossier, créez un fichier main.tf et un fichier variables.tf.
* Dans le fichier variables.tf, définissez deux variables :
* * file_name : une chaîne de caractères qui représente le nom du fichier à créer.
* * file_content : une chaîne de caractères qui sera utilisée pour remplir le fichier.
* Dans le fichier main.tf utilisez ces variables pour créer un fichier avec Terraform.
* Exécutez les commandes nécessaires pour obtenir la création du fichier local.

## Ressources
https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
https://developer.hashicorp.com/terraform/language/values/variables

## Commandes

```

terraform init -upgrade
terraform plan -var-file="terraform.tfvars" -out main.tfplan
terraform apply -var-file="terraform.tfvars" -auto-approve
terraform refresh

```