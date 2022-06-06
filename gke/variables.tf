variable "name" {
  type        = string
  description = "The name of the cluster"
}

variable "initial_node_count" {
  type        = number
  description = "The number of nodes to create in this cluster's default node pool"
  default = 0
}

variable "project" {
  type        = string
  description = "The ID of the project in which the resource belongs"
}

variable "regions" {
  type        = string
  description = "The region to host the cluster"
  default = null
}

variable "release_channel" {
  type = string
  description = "(optional) describe your variable"
  default = "UNSPECIFIED"
}

variable "remove_default_node_pool" {
  type        = string
  description = "Remove the default node pool upon cluster creation"
}

variable "zonal" {
  type        = bool
  description = "Whether is a zonal cluster"
}

variable "zone" {
  type        = list(string)
  description = "The zones to host the cluster"
  default = []
}