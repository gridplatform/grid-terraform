/**
 * Deutsche Telekom (Open Telekom Cloud) — dms
 *
 * Provisions Dms via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "dms"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
