resource "google_container_cluster" "primary" {
  name               = var.name
  location           = var.location
  initial_node_count = var.initial_node_count
  project            = var.project
}