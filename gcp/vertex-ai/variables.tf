variable "project_id" {
  type = string
}

variable "region" {
  type    = string
  default = "us-central1"
}

variable "labels" {
  type    = map(string)
  default = {}
}

# Dataset
variable "create_dataset" {
  type    = bool
  default = false
}

variable "dataset_display_name" {
  type    = string
  default = ""
}

variable "dataset_metadata_schema_uri" {
  type    = string
  default = "gs://google-cloud-aiplatform/schema/dataset/metadata/image_1.0.0.yaml"
}

# Endpoint (model serving)
variable "create_endpoint" {
  type    = bool
  default = false
}

variable "endpoint_name" {
  type    = string
  default = ""
}

variable "endpoint_display_name" {
  type    = string
  default = null
}

variable "endpoint_description" {
  type    = string
  default = ""
}

variable "endpoint_network" {
  type        = string
  default     = null
  description = "VPC network for private endpoint (projects/.../global/networks/...)"
}

# Feature Store
variable "create_featurestore" {
  type    = bool
  default = false
}

variable "featurestore_name" {
  type    = string
  default = null
}

variable "featurestore_fixed_node_count" {
  type    = number
  default = 1
}

variable "featurestore_force_destroy" {
  type    = bool
  default = false
}

# Vector Search index
variable "create_index" {
  type    = bool
  default = false
}

variable "index_display_name" {
  type    = string
  default = null
}

variable "index_description" {
  type    = string
  default = null
}

variable "index_contents_delta_uri" {
  type        = string
  default     = null
  description = "GCS URI with embedding input for index build"
}

variable "index_dimensions" {
  type    = number
  default = 768
}

variable "index_approximate_neighbors_count" {
  type    = number
  default = 150
}

variable "index_distance_measure_type" {
  type    = string
  default = "DOT_PRODUCT_DISTANCE"
}

variable "index_leaf_node_embedding_count" {
  type    = number
  default = 1000
}

variable "index_leaf_nodes_to_search_percent" {
  type    = number
  default = 10
}

variable "index_update_method" {
  type    = string
  default = "BATCH_UPDATE"
}

# Index endpoint
variable "create_index_endpoint" {
  type    = bool
  default = false
}

variable "index_endpoint_display_name" {
  type    = string
  default = null
}

variable "index_endpoint_description" {
  type    = string
  default = null
}

variable "index_endpoint_network" {
  type    = string
  default = null
}

variable "index_endpoint_public" {
  type    = bool
  default = false
}

# TensorBoard
variable "create_tensorboard" {
  type    = bool
  default = false
}

variable "tensorboard_display_name" {
  type    = string
  default = null
}

variable "tensorboard_description" {
  type    = string
  default = null
}
