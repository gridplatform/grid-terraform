/**
 * Huawei Cloud — security-group
 *
 * Provisions Security Group via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "security-group"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
