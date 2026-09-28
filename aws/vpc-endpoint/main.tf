/**
 * Amazon Web Services — vpc-endpoint
 *
 * Provisions Vpc Endpoint via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "vpc-endpoint"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
