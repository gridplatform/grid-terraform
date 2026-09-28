/**
 * Deutsche Telekom (Open Telekom Cloud) — apig
 *
 * Provisions Apig via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "apig"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
