/**
 * Huawei Cloud — iam
 *
 * Provisions Iam via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "iam"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
