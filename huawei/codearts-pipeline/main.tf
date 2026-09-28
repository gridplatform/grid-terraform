/**
 * Huawei Cloud — codearts-pipeline
 *
 * Provisions Codearts Pipeline via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "codearts-pipeline"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
