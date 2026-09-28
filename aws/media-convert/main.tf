/**
 * Amazon Web Services — media-convert
 *
 * Provisions Media Convert via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "media-convert"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
