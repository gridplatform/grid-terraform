/**
 * Amazon Web Services — verified-access
 *
 * Provisions Verified Access via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "verified-access"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
