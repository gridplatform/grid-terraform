/**
 * Huawei Cloud — rabbitmq
 *
 * Provisions Rabbitmq via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "rabbitmq"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
