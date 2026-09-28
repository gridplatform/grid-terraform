/**
 * Tencent Cloud — scf
 *
 * Provisions Scf via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "scf"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
