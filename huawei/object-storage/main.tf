/**
 * Huawei Cloud — object-storage
 *
 * Provisions Object Storage via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "object-storage"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
