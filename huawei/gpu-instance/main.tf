/**
 * Huawei Cloud — gpu-instance
 *
 * Provisions Gpu Instance via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "gpu-instance"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
