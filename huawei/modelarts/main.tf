/**
 * Huawei Cloud — modelarts
 *
 * Provisions Modelarts via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "modelarts"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
