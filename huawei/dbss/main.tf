/**
 * Huawei Cloud — dbss
 *
 * Provisions Dbss via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dbss"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
