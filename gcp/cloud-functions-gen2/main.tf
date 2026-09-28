/**
 * Google Cloud — cloud-functions-gen2
 *
 * Provisions Cloud Functions Gen2 via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-functions-gen2"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
