/**
 * Amazon Web Services — backup
 *
 * Provisions Backup via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "backup"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
