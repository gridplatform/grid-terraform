/**
 * Huawei Cloud — rocketmq
 *
 * Provisions Rocketmq via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "rocketmq"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
