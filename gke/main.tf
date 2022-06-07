locals {
  location      = var.zonal ? var.zone[0] : var.regions
  node_location = var.zonal ? null : var.zone
}