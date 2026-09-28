/**
 * Google Cloud — private-ca
 *
 * Provisions Private Ca via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "private-ca"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
