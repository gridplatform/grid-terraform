/**
 * Tencent Cloud — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "gpu-node-pool"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
