/**
 * Serverless VPC Access connector — for Cloud Run / Cloud Functions private VPC.
 * One product: google_vpc_access_connector.
 */

resource "google_vpc_access_connector" "this" {
  project       = var.project_id
  name          = var.name
  region        = var.region
  network       = var.network
  ip_cidr_range = var.ip_cidr_range
  min_instances = var.min_instances
  max_instances = var.max_instances
  machine_type  = var.machine_type

  dynamic "subnet" {
    for_each = var.subnet_name != null ? [1] : []
    content {
      name       = var.subnet_name
      project_id = coalesce(var.subnet_project_id, var.project_id)
    }
  }
}
