resource "google_storage_bucket" "default" {
  name          = "backend-tf-state-gcp-stage"
  force_destroy = true
  location      = "US"
  storage_class = "STANDARD"
}
