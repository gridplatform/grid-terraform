/**
 * Tencent Cloud — vpc-endpoint
 *
 * Provisions Vpc Endpoint via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "vpc-endpoint"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
