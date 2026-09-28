/**
 * Deutsche Telekom (Open Telekom Cloud) — sfs
 *
 * Provisions Sfs via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "sfs"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
