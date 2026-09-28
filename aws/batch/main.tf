/**
 * Amazon Web Services — batch
 *
 * Provisions Batch via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "batch"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
