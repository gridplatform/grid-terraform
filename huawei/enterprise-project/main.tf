/**
 * Huawei Cloud — enterprise-project
 *
 * Provisions Enterprise Project via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "enterprise-project"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
