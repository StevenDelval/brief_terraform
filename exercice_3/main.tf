data "http" "file_to_download" {
  url = "https://cdn.wsform.com/wp-content/uploads/2018/09/country_full.csv"
}

resource "local_file" "file_download" {
  filename = var.file_name
  content = data.http.file_to_download.response_body
  file_permission = var.file_permision
}