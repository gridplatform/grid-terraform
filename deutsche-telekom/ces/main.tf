/**
 * Deutsche Telekom (Open Telekom Cloud) — ces
 *
 * Provisions Ces via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "ces"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
