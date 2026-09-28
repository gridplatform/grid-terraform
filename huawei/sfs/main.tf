/**
 * Huawei Cloud — sfs
 *
 * Provisions Sfs via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "sfs"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
