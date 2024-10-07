variable "file_name" {
  type        = string
  description = "A string representing the name of the file to be created."
}
variable "file_content" {
  type        = string
  description = "A string that will be used to fill the file."
}

variable "file_permision" {
  type        = string
  description = "Permissions to set for the output file."
}