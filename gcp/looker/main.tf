/**
 * Google Cloud — looker
 *
 * Provisions Looker via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "looker"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
