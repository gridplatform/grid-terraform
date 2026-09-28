/**
 * Google Cloud — datastream
 *
 * Provisions Datastream via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "datastream"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
