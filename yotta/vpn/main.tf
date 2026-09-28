/**
 * Yotta — vpn
 *
 * Provisions Vpn via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "vpn"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
