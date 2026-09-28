/**
 * Amazon Web Services — timestream
 *
 * Provisions Timestream via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "timestream"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
