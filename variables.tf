variable "project_id" {
  type        = string
  description = "project_id"
}

variable "region" {
  type        = string
  description = "region"
}

variable "creds_file_path" {
  type        = string
  description = "creds_file_path"
}

variable "cluster_name" {
  type        = string
  description = "cluster_name"
}

variable "gke_num_nodes" {
  default     = 2
  description = "number of gke nodes"
}

variable "machine_type" {
  type        = string
  description = "machine_type"
}

variable "node_locations" {
  type = list
  description = "node_locations"
}
