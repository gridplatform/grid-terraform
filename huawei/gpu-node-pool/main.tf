/**
 * Huawei Cloud — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "gpu-node-pool"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
