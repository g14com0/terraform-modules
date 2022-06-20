resource "google_storage_bucket" "gcs" {
  name          = var.name
  location      = var.location

  uniform_bucket_level_access = true
}