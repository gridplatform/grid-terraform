/**
 * Alibaba Cloud — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "gpu-node-pool"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
