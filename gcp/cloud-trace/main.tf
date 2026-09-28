/**
 * Google Cloud — cloud-trace
 *
 * Provisions Cloud Trace via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-trace"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
