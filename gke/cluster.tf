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
    version            = var.gke_version

    autoscaling {
      min_node_count = var.min_node_count
      max_node_count = var.max_node_count
    }

    management {
      auto_upgrade = var.auto_upgrade
    }

    upgrade_settings {
      max_surge       = var.max_surge
      max_unavailable = var.max_unavailable
    }

    node_config {
      image_type   = var.image_type
      machine_type = var.machine_type
    }
    
    metadata {
     disable-legacy-endpoints = true
    }
  }
}

resource "google_container_node_pool" "node_pool" {
  for_each       = local.node_pool_name
  name           = each.value
  location       = local.location
  node_locations = local.node_location

  cluster    = google_container_cluster.primary.name
  node_count = var.node_count
  version    = var.gke_version

  autoscaling {
    min_node_count = var.min_node_count
    max_node_count = var.max_node_count
  }

  management {
    auto_upgrade = var.auto_upgrade
    auto_repair  = var.auto_repair
  }

  upgrade_settings {
    max_surge       = var.max_surge
    max_unavailable = var.max_unavailable
  }

  node_config {
    image_type   = var.image_type
    machine_type = var.machine_type
  }

  metadata {
    disable-legacy-endpoints = true
  }
}
