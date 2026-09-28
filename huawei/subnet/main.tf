/**
 * Huawei Cloud — subnet
 *
 * Provisions Subnet via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "subnet"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
