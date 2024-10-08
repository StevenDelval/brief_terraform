module "azure_storage"{
    source = "./modules/azure_storage"

    blob_name = var.blob_name
    storage_account_name = var.storage_account_name
    storage_container_name = var.storage_container_name
    resource_group_location = var.resource_group_location
    resource_group_name = var.resource_group_name

}