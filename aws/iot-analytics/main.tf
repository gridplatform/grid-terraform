/**
 * Amazon Web Services — iot-analytics
 *
 * Provisions Iot Analytics via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "iot-analytics"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
