/**
 * Google Cloud — batch
 *
 * Provisions Batch via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "batch"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
