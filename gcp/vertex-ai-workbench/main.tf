/**
 * Vertex AI Workbench instance (JupyterLab) for ML development.
 */

resource "google_workbench_instance" "this" {
  project  = var.project_id
  name     = var.name
  location = var.location
  labels   = var.labels

  gce_setup {
    machine_type      = var.machine_type
    disable_public_ip = var.disable_public_ip

    dynamic "vm_image" {
      for_each = var.vm_image != null ? [var.vm_image] : []
      content {
        project = vm_image.value.project
        family  = try(vm_image.value.family, null)
        name    = try(vm_image.value.name, null)
      }
    }

    dynamic "container_image" {
      for_each = var.container_image != null ? [var.container_image] : []
      content {
        repository = container_image.value.repository
        tag        = try(container_image.value.tag, "latest")
      }
    }

    dynamic "network_interfaces" {
      for_each = var.network != null ? [1] : []
      content {
        network  = var.network
        subnet   = var.subnet
        nic_type = var.nic_type
      }
    }

    dynamic "service_accounts" {
      for_each = var.service_account_email != null ? [1] : []
      content {
        email = var.service_account_email
      }
    }

    dynamic "accelerator_configs" {
      for_each = var.accelerator_type != null ? [1] : []
      content {
        type       = var.accelerator_type
        core_count = var.accelerator_core_count
      }
    }

    boot_disk {
      disk_size_gb = var.boot_disk_size_gb
      disk_type    = var.boot_disk_type
    }

    dynamic "data_disks" {
      for_each = var.data_disk_size_gb != null ? [1] : []
      content {
        disk_size_gb = var.data_disk_size_gb
        disk_type    = var.data_disk_type
      }
    }
  }

  desired_state = var.desired_state
}
