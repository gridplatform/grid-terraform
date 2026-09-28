/**
 * Huawei Cloud — ga
 *
 * Provisions Ga via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "ga"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
