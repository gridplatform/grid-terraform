/**
 * Huawei Cloud — billing
 *
 * Provisions Billing via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "billing"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
