/**
 * Google Cloud — kserve
 *
 * Provisions Kserve via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "kserve"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
