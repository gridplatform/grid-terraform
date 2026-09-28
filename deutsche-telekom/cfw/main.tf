/**
 * Deutsche Telekom (Open Telekom Cloud) — cfw
 *
 * Provisions Cfw via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "cfw"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
