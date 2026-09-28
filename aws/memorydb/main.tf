/**
 * Amazon Web Services — memorydb
 *
 * Provisions Memorydb via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "memorydb"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
