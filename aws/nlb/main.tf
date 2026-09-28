/**
 * Amazon Web Services — nlb
 *
 * Provisions Nlb via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "nlb"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
