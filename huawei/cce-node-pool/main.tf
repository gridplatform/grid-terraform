/**
 * Huawei Cloud — cce-node-pool
 *
 * Provisions Cce Node Pool via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cce-node-pool"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
