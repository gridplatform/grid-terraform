/**
 * Deutsche Telekom (Open Telekom Cloud) — network
 *
 * Provisions Network via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "network"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
