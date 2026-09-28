/**
 * Google Cloud — healthcare-api
 *
 * Provisions Healthcare Api via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "healthcare-api"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
