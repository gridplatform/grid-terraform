/**
 * Amazon Web Services — private-ca
 *
 * Provisions Private Ca via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "private-ca"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
