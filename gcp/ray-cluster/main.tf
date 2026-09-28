/**
 * Google Cloud — ray-cluster
 *
 * Provisions Ray Cluster via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "ray-cluster"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
