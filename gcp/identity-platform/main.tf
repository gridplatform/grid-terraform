/**
 * Google Cloud — identity-platform
 *
 * Provisions Identity Platform via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "identity-platform"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
