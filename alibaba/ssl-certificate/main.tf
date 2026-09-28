/**
 * Alibaba Cloud — ssl-certificate
 *
 * Provisions Ssl Certificate via the alicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "alibaba"
    module      = "ssl-certificate"
    tf_provider = "alicloud"
    note        = "module placeholder"
  }
}
