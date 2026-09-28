/**
 * Deutsche Telekom (Open Telekom Cloud) — er
 *
 * Provisions Er via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "er"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
