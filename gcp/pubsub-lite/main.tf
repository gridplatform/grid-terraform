/**
 * Google Cloud — pubsub-lite
 *
 * Provisions Pubsub Lite via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "pubsub-lite"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
