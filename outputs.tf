output "app_name" {
  value = var.appname
}

output "region" {
  value = var.location
}

output "env" {
  value = var.env
}
output "cloud_run_dns" {
  value = google_cloud_run_service.webapp.status[0].url
}

output "cloud_run_resource_id" {
  value = google_cloud_run_service.webapp.id
}
