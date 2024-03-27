terraform {
  backend "gcs" {
    bucket  = backend-tf-state-gcp-1
    prefix  = "terraform/${var.appname}/${var.env}"
  }
}
