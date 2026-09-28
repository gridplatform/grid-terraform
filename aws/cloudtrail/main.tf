/**
 * Amazon Web Services — cloudtrail
 *
 * Provisions Cloudtrail via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "cloudtrail"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
