terraform {
  backend "gcs" {
    bucket  = backend-tf-state-gcp-1
    prefix  = "terraform/state"
    key     = "aws/${var.appname}/${var.env}"
  }
}
