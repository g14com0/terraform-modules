variable "name" {
  type        = string
  description = "(optional) describe your variable"
}

variable "initial_node_count" {
  type        = number
  description = "(optional) describe your variable"
}

variable "project" {
  type        = string
  description = "(optional) describe your variable"
}

variable "regions" {
  type        = string
  description = "(optional) describe your variable"
  default = null
}

variable "remove_default_node_pool" {
  type        = string
  description = "(optional) describe your variable"
}

variable "zonal" {
  type        = bool
  description = "(optional) describe your variable"
}

variable "zone" {
  type        = list(string)
  description = "(optional) describe your variable"
  default = []
}