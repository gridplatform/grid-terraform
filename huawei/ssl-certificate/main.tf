/**
 * Huawei Cloud — ssl-certificate
 *
 * Provisions Ssl Certificate via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "ssl-certificate"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
