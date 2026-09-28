/**
 * Google Cloud — chroma
 *
 * Provisions Chroma via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "chroma"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
