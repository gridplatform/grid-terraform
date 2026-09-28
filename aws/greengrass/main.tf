/**
 * Amazon Web Services — greengrass
 *
 * Provisions Greengrass via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "greengrass"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
