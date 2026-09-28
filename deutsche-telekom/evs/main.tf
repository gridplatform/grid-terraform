/**
 * Deutsche Telekom (Open Telekom Cloud) — evs
 *
 * Provisions Evs via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "evs"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
