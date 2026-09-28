/**
 * Tencent Cloud — ckafka
 *
 * Provisions Ckafka via the tencentcloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "tencent"
    module      = "ckafka"
    tf_provider = "tencentcloud"
    note        = "module placeholder"
  }
}
