resource "google_container_cluster" "primary" {
  project = var.project

  location       = local.location
  node_locations = local.node_location

  name                     = var.name
  remove_default_node_pool = var.remove_default_node_pool

  release_channel {
    channel = var.release_channel
  }

  node_pool {
    name               = "default-pool"
    initial_node_count = var.initial_node_count

    node_config {
      image_type       = lookup(var.node_pools[0], "image_type", "COS_CONTAINERD")
      machine_type     = lookup(var.node_pools[0], "machine_type", "e2-medium")
    }


    management {
      auto_upgrade = lookup(var.node_pools[0], "auto_upgrade", false)
      auto_repair  = lookup(var.node_pools[0], "auto_repair", false)
    }

  }
}