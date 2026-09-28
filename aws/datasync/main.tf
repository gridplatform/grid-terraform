/**
 * Amazon Web Services — datasync
 *
 * Provisions Datasync via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "datasync"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
