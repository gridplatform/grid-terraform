/**
 * Huawei Cloud — workspace
 *
 * Provisions Workspace via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "workspace"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
