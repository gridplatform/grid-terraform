/**
 * Google Cloud — network-security
 *
 * Provisions Network Security via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "network-security"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
