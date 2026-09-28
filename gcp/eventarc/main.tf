/**
 * Google Cloud — eventarc
 *
 * Provisions Eventarc via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "eventarc"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
