/**
 * Deutsche Telekom (Open Telekom Cloud) — dws
 *
 * Provisions Dws via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "dws"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
