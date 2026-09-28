/**
 * Huawei Cloud — mrs
 *
 * Provisions Mrs via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "mrs"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
