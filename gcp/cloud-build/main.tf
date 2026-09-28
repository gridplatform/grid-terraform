/**
 * Google Cloud — cloud-build
 *
 * Provisions Cloud Build via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "cloud-build"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
