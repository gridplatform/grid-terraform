/**
 * Deutsche Telekom (Open Telekom Cloud) — rds
 *
 * Provisions Rds via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "rds"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
