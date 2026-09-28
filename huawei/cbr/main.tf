/**
 * Huawei Cloud — cbr
 *
 * Provisions Cbr via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cbr"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
