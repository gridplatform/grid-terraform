/**
 * Deutsche Telekom (Open Telekom Cloud) — dds
 *
 * Provisions Dds via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "dds"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
