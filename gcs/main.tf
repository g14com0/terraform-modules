resource "google_storage_bucket" "static-site" {
  name          = var.name
  location      = var.location
}