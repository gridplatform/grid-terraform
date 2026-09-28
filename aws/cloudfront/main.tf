/**
 * Amazon Web Services — cloudfront
 *
 * Provisions Cloudfront via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "cloudfront"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
