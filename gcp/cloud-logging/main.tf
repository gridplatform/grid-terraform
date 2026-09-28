/**
 * Google Cloud — cloud-logging
 *
 * Provisions Cloud Logging via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-logging"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
