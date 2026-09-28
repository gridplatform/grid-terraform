output "workspace_id" {
  value = azurerm_machine_learning_workspace.this.id
}

output "workspace_name" {
  value = azurerm_machine_learning_workspace.this.name
}

output "identity_principal_id" {
  value = azurerm_machine_learning_workspace.this.identity[0].principal_id
}

output "compute_cluster_id" {
  value = try(azurerm_machine_learning_compute_cluster.this[0].id, null)
}
