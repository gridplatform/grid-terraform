/**
 * Amazon Web Services — forecast
 *
 * Provisions Forecast via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "forecast"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
