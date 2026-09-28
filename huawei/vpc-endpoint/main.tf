/**
 * Huawei Cloud — vpc-endpoint
 *
 * Provisions Vpc Endpoint via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "vpc-endpoint"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
