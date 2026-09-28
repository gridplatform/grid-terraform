/**
 * Deutsche Telekom (Open Telekom Cloud) — waf
 *
 * Provisions Waf via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "waf"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
