/**
 * Amazon Web Services — dms
 *
 * Provisions Dms via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "dms"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
