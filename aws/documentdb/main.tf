/**
 * Amazon Web Services — documentdb
 *
 * Provisions Documentdb via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "documentdb"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
