/**
 * Amazon Web Services — opensearch-serverless
 *
 * Provisions Opensearch Serverless via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "opensearch-serverless"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
