locals {
  environment = ower(var.env)
  backend_bucket_name = "backend-tf-state-gcp-${local.environment}"
}
