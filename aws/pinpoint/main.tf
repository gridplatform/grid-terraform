/**
 * Amazon Web Services — pinpoint
 *
 * Provisions Pinpoint via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "pinpoint"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
