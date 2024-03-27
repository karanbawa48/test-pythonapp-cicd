# Provider configuration (assuming GCP)
provider "google" {
  project = "probable-bebop-418220"
}

# Resource for Google Cloud Run
resource "google_cloud_run_service" "webapp" {
  name     = var.appname
  location = var.location

  template {
    spec {
      containers {
        image = "us-east1-docker.pkg.dev/probable-bebop-418220/stage-app/webapp"
      }
    }
  }

  # Allow unauthenticated invocations
  traffic {
    percent         = 100
    latest_revision = true
  }
}
  # Configure IAM policy to allow unauthenticated invocations
data "google_iam_policy" "noauth" {
  binding {
    role = "roles/run.invoker"
    members = [
      "allUsers",
    ]
  }
}

resource "google_cloud_run_service_iam_policy" "noauth" {
  location    = google_cloud_run_service.hello_world.location
  project     = google_cloud_run_service.hello_world.project
  service     = google_cloud_run_service.hello_world.name

  policy_data = data.google_iam_policy.noauth.policy_data
}
