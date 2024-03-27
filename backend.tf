terraform {
  backend "gcs" {
    bucket  = "backend-tf-state-gcp-prod"
    prefix  = "terraform/state"
  }
}
