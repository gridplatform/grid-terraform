/**
 * Amazon Web Services — verified-permissions
 *
 * Provisions Verified Permissions via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "verified-permissions"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
