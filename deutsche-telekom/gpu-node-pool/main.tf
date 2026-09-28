/**
 * Deutsche Telekom (Open Telekom Cloud) — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the opentelekomcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "deutsche-telekom"
    module      = "gpu-node-pool"
    tf_provider = "opentelekomcloud"
    note        = "module placeholder"
  }
}
