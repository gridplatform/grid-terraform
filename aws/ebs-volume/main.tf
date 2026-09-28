/**
 * Amazon Web Services — ebs-volume
 *
 * Provisions Ebs Volume via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "ebs-volume"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
