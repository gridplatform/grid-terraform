/**
 * Amazon Web Services — payment-cryptography
 *
 * Provisions Payment Cryptography via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "payment-cryptography"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
