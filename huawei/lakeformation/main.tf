/**
 * Huawei Cloud — lakeformation
 *
 * Provisions Lakeformation via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "lakeformation"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
