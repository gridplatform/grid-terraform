/**
 * Amazon Web Services — appstream
 *
 * Provisions Appstream via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "appstream"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
