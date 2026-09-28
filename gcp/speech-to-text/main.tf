/**
 * Google Cloud — speech-to-text
 *
 * Provisions Speech To Text via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "speech-to-text"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
