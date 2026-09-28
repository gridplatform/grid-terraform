/**
 * Deutsche Telekom (Open Telekom Cloud) — swr
 *
 * Provisions Swr via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "swr"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
