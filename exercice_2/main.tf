resource "local_file" "my_file_id" {
  filename = var.file_name
  content = var.file_content
  file_permission = var.file_permision
}