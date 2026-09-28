/**
 * Huawei Cloud — gaussdb-redis
 *
 * Provisions Gaussdb Redis via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "gaussdb-redis"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
