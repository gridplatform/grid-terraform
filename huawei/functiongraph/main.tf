/**
 * Huawei Cloud — functiongraph
 *
 * Provisions Functiongraph via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "functiongraph"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
