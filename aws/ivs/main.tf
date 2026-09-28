/**
 * Amazon Web Services — ivs
 *
 * Provisions Ivs via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "ivs"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
