/**
 * Amazon Web Services — open-webui
 *
 * Provisions Open Webui via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "open-webui"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
