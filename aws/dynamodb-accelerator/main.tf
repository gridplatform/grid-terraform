/**
 * Amazon Web Services — dynamodb-accelerator
 *
 * Provisions Dynamodb Accelerator via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "dynamodb-accelerator"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
