/**
 * Google Cloud — translation
 *
 * Provisions Translation via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "translation"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
