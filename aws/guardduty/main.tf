/**
 * Amazon Web Services — guardduty
 *
 * Provisions Guardduty via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "guardduty"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
