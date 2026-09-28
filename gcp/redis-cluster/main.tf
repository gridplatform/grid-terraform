/**
 * Google Cloud — redis-cluster
 *
 * Provisions Redis Cluster via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "redis-cluster"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
