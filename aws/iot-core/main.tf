/**
 * Amazon Web Services — iot-core
 *
 * Provisions Iot Core via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "iot-core"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
