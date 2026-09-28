/**
 * Deutsche Telekom (Open Telekom Cloud) — gaussdb
 *
 * Provisions Gaussdb via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "gaussdb"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
