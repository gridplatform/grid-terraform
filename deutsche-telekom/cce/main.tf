/**
 * Deutsche Telekom (Open Telekom Cloud) — cce
 *
 * Provisions Cce via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "cce"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
