locals {
  location       = var.zonal ? var.zone[0] : var.regions
  node_location  = var.zonal ? null : var.zone
  node_pool_name = var.remove_default_node_pool ? var.node_pools_name : []
}