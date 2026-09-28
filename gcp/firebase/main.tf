/**
 * Google Cloud — firebase
 *
 * Provisions Firebase via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "firebase"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
