/**
 * Huawei Cloud — dcs-redis
 *
 * Provisions Dcs Redis via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "dcs-redis"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
