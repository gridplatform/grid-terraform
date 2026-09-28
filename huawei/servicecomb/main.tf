/**
 * Huawei Cloud — servicecomb
 *
 * Provisions Servicecomb via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "servicecomb"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
