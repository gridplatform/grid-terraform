/**
 * Amazon Web Services — polly
 *
 * Provisions Polly via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "polly"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
