/**
 * Deutsche Telekom (Open Telekom Cloud) — smn
 *
 * Provisions Smn via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "smn"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
