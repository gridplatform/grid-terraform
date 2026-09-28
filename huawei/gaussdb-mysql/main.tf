/**
 * Huawei Cloud — gaussdb-mysql
 *
 * Provisions Gaussdb Mysql via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "gaussdb-mysql"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
