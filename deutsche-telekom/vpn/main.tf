/**
 * Deutsche Telekom (Open Telekom Cloud) — vpn
 *
 * Provisions Vpn via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "vpn"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
