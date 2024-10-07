resource "local_file" "my_file_id" {
  filename = "hello_world.txt"
  content = "Bienvenue dans Terraform !"
  file_permission = var.file_permision
}