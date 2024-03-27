resource "google_storage_bucket" "default" {
  name          = "backend-tf-state-gcp-prod"
  force_destroy = true
  location      = "US"
  storage_class = "STANDARD"
}
