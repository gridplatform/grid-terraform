/**
 * Tencent Cloud — compute-instance
 *
 * Provisions Compute Instance via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "compute-instance"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
