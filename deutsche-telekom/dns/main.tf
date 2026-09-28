/**
 * Deutsche Telekom (Open Telekom Cloud) — dns
 *
 * Provisions Dns via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "dns"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
