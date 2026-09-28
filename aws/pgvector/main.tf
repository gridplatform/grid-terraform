/**
 * Amazon Web Services — pgvector
 *
 * Provisions Pgvector via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "pgvector"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
