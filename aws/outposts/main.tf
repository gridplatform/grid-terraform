/**
 * Amazon Web Services — outposts
 *
 * Provisions Outposts via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "outposts"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
