/**
 * Huawei Cloud — rds-mysql
 *
 * Provisions Rds Mysql via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "rds-mysql"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
