/**
 * Amazon Web Services — emr-serverless
 *
 * Provisions Emr Serverless via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "emr-serverless"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
