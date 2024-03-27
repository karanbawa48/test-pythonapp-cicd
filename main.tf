# Provider configuration (assuming GCP)
provider "google" {
  # credentials = file("<path-to-your-service-account-key>")
  project     = "probable-bebop-418220"

}

# Resource for Google Cloud Run
resource "google_cloud_run_service" "hello_world" {
  name     = "hello-world"
   location = "us-east1"
  template {
    spec {
      containers {
        image = "gcr.io/<your-project-id>/hello-world-app:latest"
      }
    }
  }
}

