/**
 * Deutsche Telekom (Open Telekom Cloud) — eip
 *
 * Provisions Eip via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "eip"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
