/**
 * Tencent Cloud — object-storage
 *
 * Provisions Object Storage via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "object-storage"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
