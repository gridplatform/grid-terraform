/**
 * Google Cloud — network-connectivity
 *
 * Provisions Network Connectivity via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "network-connectivity"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
