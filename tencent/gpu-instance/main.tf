/**
 * Tencent Cloud — gpu-instance
 *
 * Provisions Gpu Instance via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "gpu-instance"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
