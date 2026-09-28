/**
 * Deutsche Telekom (Open Telekom Cloud) — cce-node-pool
 *
 * Provisions Cce Node Pool via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "cce-node-pool"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
