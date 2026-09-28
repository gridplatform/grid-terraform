/**
 * OVHcloud — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "gpu-node-pool"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
