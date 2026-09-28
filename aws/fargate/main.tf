/**
 * Amazon Web Services — fargate
 *
 * Provisions Fargate via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "fargate"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
