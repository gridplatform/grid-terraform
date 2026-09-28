/**
 * Amazon Web Services — macie
 *
 * Provisions Macie via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "macie"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
