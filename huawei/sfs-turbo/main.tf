/**
 * Huawei Cloud — sfs-turbo
 *
 * Provisions Sfs Turbo via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "sfs-turbo"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
