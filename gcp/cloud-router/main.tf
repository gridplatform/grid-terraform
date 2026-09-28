/**
 * Google Cloud — cloud-router
 *
 * Provisions Cloud Router via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-router"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
