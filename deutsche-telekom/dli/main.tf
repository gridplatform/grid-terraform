/**
 * Deutsche Telekom (Open Telekom Cloud) — dli
 *
 * Provisions Dli via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "dli"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
