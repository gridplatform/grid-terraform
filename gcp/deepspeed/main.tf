/**
 * Google Cloud — deepspeed
 *
 * Provisions Deepspeed via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "deepspeed"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
