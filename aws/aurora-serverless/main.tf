/**
 * Amazon Web Services — aurora-serverless
 *
 * Provisions Aurora Serverless via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "aurora-serverless"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
