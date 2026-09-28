/**
 * Yotta — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "gpu-node-pool"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
