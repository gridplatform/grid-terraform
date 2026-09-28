/**
 * Google Cloud — interconnect
 *
 * Provisions Interconnect via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "interconnect"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
