/**
 * Google Cloud — gke-hub
 *
 * Provisions Gke Hub via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "gke-hub"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
