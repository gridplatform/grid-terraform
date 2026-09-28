/**
 * Deutsche Telekom (Open Telekom Cloud) — cts
 *
 * Provisions Cts via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "cts"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
