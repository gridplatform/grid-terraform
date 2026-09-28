/**
 * Tencent Cloud — subnet
 *
 * Provisions Subnet via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "subnet"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
