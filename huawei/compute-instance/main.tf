/**
 * Huawei Cloud — compute-instance
 *
 * Provisions Compute Instance via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "compute-instance"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
