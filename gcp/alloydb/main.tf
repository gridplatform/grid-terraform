/**
 * Google Cloud — alloydb
 *
 * Provisions Alloydb via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "alloydb"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
