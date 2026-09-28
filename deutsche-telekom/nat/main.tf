/**
 * Deutsche Telekom (Open Telekom Cloud) — nat
 *
 * Provisions Nat via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "nat"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
