output "dataset_id" {
  value = try(google_vertex_ai_dataset.dataset[0].id, null)
}

output "dataset_name" {
  value = try(google_vertex_ai_dataset.dataset[0].name, null)
}

output "endpoint_id" {
  value = try(google_vertex_ai_endpoint.endpoint[0].id, null)
}

output "endpoint_name" {
  value = try(google_vertex_ai_endpoint.endpoint[0].name, null)
}

output "featurestore_id" {
  value = try(google_vertex_ai_featurestore.this[0].id, null)
}

output "index_id" {
  value = try(google_vertex_ai_index.this[0].id, null)
}

output "index_endpoint_id" {
  value = try(google_vertex_ai_index_endpoint.this[0].id, null)
}

output "tensorboard_id" {
  value = try(google_vertex_ai_tensorboard.this[0].id, null)
}
