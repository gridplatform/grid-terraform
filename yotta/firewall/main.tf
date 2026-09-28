/**
 * Yotta — firewall
 *
 * Provisions Firewall via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "firewall"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
