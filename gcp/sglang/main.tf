/**
 * Google Cloud — sglang
 *
 * Provisions Sglang via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "sglang"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
