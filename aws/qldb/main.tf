/**
 * Amazon Web Services — qldb
 *
 * Provisions Qldb via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "qldb"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
