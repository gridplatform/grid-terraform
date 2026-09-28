/**
 * Vertex AI / Gemini Enterprise Agent Platform primitives.
 * Toggle: dataset, endpoint, featurestore, vector index, index endpoint, tensorboard.
 * Only google_vertex_ai_* — no nested modules.
 */

resource "google_vertex_ai_dataset" "dataset" {
  count               = var.create_dataset ? 1 : 0
  project             = var.project_id
  display_name        = var.dataset_display_name
  metadata_schema_uri = var.dataset_metadata_schema_uri
  region              = var.region
  labels              = var.labels
}

resource "google_vertex_ai_endpoint" "endpoint" {
  count        = var.create_endpoint ? 1 : 0
  project      = var.project_id
  name         = var.endpoint_name
  display_name = coalesce(var.endpoint_display_name, var.endpoint_name)
  description  = var.endpoint_description
  location     = var.region
  labels       = var.labels
  network      = var.endpoint_network
}

resource "google_vertex_ai_featurestore" "this" {
  count   = var.create_featurestore ? 1 : 0
  project = var.project_id
  name    = var.featurestore_name
  region  = var.region
  labels  = var.labels

  online_serving_config {
    fixed_node_count = var.featurestore_fixed_node_count
  }

  force_destroy = var.featurestore_force_destroy
}

resource "google_vertex_ai_index" "this" {
  count        = var.create_index ? 1 : 0
  project      = var.project_id
  region       = var.region
  display_name = var.index_display_name
  description  = var.index_description
  labels       = var.labels
  metadata {
    contents_delta_uri = var.index_contents_delta_uri
    config {
      dimensions                  = var.index_dimensions
      approximate_neighbors_count = var.index_approximate_neighbors_count
      distance_measure_type       = var.index_distance_measure_type
      algorithm_config {
        tree_ah_config {
          leaf_node_embedding_count    = var.index_leaf_node_embedding_count
          leaf_nodes_to_search_percent = var.index_leaf_nodes_to_search_percent
        }
      }
    }
  }
  index_update_method = var.index_update_method
}

resource "google_vertex_ai_index_endpoint" "this" {
  count                   = var.create_index_endpoint ? 1 : 0
  project                 = var.project_id
  region                  = var.region
  display_name            = var.index_endpoint_display_name
  description             = var.index_endpoint_description
  labels                  = var.labels
  network                 = var.index_endpoint_network
  public_endpoint_enabled = var.index_endpoint_public
}

resource "google_vertex_ai_tensorboard" "this" {
  count        = var.create_tensorboard ? 1 : 0
  project      = var.project_id
  region       = var.region
  display_name = var.tensorboard_display_name
  description  = var.tensorboard_description
  labels       = var.labels
}
