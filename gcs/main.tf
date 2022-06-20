resource "google_storage_bucket" "gcs" {
  name          = var.name
  location      = var.location
}