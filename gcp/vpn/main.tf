/**
 * Google Cloud — vpn
 *
 * Provisions Vpn via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "vpn"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
