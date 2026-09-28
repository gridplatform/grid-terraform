/**
 * Google Cloud — service-directory
 *
 * Provisions Service Directory via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "service-directory"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
