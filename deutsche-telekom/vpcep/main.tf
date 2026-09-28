/**
 * Deutsche Telekom (Open Telekom Cloud) — vpcep
 *
 * Provisions Vpcep via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "vpcep"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
