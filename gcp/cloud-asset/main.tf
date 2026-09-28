/**
 * Google Cloud — cloud-asset
 *
 * Provisions Cloud Asset via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-asset"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
