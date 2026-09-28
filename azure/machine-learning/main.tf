/**
 * Azure Machine Learning workspace (+ optional Application Insights / Key Vault / Storage refs from caller).
 */

resource "azurerm_machine_learning_workspace" "this" {
  name                    = var.name
  location                = var.location
  resource_group_name     = var.resource_group_name
  application_insights_id = var.application_insights_id
  key_vault_id            = var.key_vault_id
  storage_account_id      = var.storage_account_id
  identity {
    type = "SystemAssigned"
  }
  public_network_access_enabled = var.public_network_access_enabled
  tags                          = var.tags
}

resource "azurerm_machine_learning_compute_cluster" "this" {
  count = var.create_compute_cluster ? 1 : 0

  name                          = var.compute_cluster_name
  location                      = var.location
  machine_learning_workspace_id = azurerm_machine_learning_workspace.this.id
  vm_priority                   = var.compute_vm_priority
  vm_size                       = var.compute_vm_size

  scale_settings {
    min_node_count                       = var.compute_min_nodes
    max_node_count                       = var.compute_max_nodes
    scale_down_nodes_after_idle_duration = var.compute_idle_duration
  }

  identity {
    type = "SystemAssigned"
  }
}
