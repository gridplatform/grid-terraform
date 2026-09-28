/**
 * Amazon Web Services — ecr-public
 *
 * Provisions Ecr Public via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "ecr-public"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
