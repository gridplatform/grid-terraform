/**
 * Huawei Cloud — cloudtable
 *
 * Provisions Cloudtable via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "cloudtable"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
