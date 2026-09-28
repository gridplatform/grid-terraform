/**
 * Google Cloud — firewall-policy
 *
 * Provisions Firewall Policy via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "firewall-policy"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
