/**
 * Huawei Cloud — rds
 *
 * Provisions Rds via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "rds"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
