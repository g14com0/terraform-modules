variable "name" {
  type        = string
  description = "The name of the cluster"
}

variable "initial_node_count" {
  type        = number
  description = "The number of nodes to create in this cluster's default node pool"
  default     = 0
}

variable "node_pools_name" {
  type = set(string)
  description = "(optional) describe your variable"
  default = [ "value" ]
}

variable "project" {
  type        = string
  description = "The ID of the project in which the resource belongs"
}

variable "regions" {
  type        = string
  description = "The region to host the cluster"
  default     = null
}

variable "release_channel" {
  type        = string
  description = "(optional) describe your variable"
  default     = "UNSPECIFIED"
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
  default     = []
}

variable "node_count" {
  type = number
  description = "(optional) describe your variable"
  default = 1
}

variable "gke_version" {
  type = string
  description = "(optional) describe your variable"
  default = null
}

variable "min_node_count" {
  type        = number
  description = "Minimum number of nodes in the NodePool"
  default     = 1
}

variable "max_node_count" {
  type        = number
  description = "Maximum number of nodes in the NodePool"
  default     = 1
}

variable "auto_upgrade" {
  type        = bool
  description = "Whether the nodes will be automatically upgraded"
  default     = false
}

variable "auto_repair" {
  type        = string
  description = "Whether the nodes will be automatically repaired"
  default     = false
}

variable "max_surge" {
  type        = number
  description = "The number of additional nodes that can be added to the node pool during an upgrade"
  default     = 1
}

variable "max_unavailable" {
  type        = number
  description = "he number of nodes that can be simultaneously unavailable during an upgrade"
  default     = 0
}

variable "image_type" {
  type        = string
  description = "The default image type used by NAP once a new node pool is being created"
  default     = "COS_CONTAINERD"
}

variable "machine_type" {
  type        = string
  description = "(optional) describe your variable"
  default     = "e2-micro"
}