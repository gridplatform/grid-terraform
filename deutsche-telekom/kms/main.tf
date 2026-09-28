/**
 * Deutsche Telekom (Open Telekom Cloud) — kms
 *
 * Provisions Kms via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "kms"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
