output "instance_id" {
  value = google_workbench_instance.this.id
}

output "proxy_uri" {
  value = google_workbench_instance.this.proxy_uri
}

output "state" {
  value = google_workbench_instance.this.state
}
