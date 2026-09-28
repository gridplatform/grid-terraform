/**
 * Huawei Cloud — elb
 *
 * Provisions Elb via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "elb"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
