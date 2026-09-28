/**
 * Tencent Cloud — tke-node-pool
 *
 * Provisions Tke Node Pool via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "tke-node-pool"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
