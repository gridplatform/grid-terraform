/**
 * Google Cloud — tpu
 *
 * Provisions Tpu via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "tpu"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
