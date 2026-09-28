/**
 * Google Cloud — cloud-cdn
 *
 * Provisions Cloud Cdn via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-cdn"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
