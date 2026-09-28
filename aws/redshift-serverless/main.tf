/**
 * Amazon Web Services — redshift-serverless
 *
 * Provisions Redshift Serverless via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "redshift-serverless"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
