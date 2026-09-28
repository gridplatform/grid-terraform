/**
 * Amazon Web Services — qdrant
 *
 * Provisions Qdrant via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "qdrant"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
