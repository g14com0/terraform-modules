resource "google_container_cluster" "primary" {
  project = var.project

  location       = local.location
  node_locations = local.node_location

  name                     = var.name
  initial_node_count       = var.initial_node_count
  remove_default_node_pool = var.remove_default_node_pool

  release_channel {
    channel = var.release_channel
  }
}