/**
 * Amazon Web Services — opensearch
 *
 * Provisions Opensearch via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "opensearch"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
