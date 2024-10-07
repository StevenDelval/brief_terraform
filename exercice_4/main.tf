resource "random_password" "password" {
  length           = 16
  special          = true
  count            = 10
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "local_file" "password_file" {
  filename = var.file_name
  content = join("\n",random_password.password[*].result)
  file_permission = var.file_permision
}