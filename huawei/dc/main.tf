/**
 * Huawei Cloud — dc
 *
 * Provisions Dc via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dc"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
