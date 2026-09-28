/**
 * Amazon Web Services — glue
 *
 * Provisions Glue via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "glue"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
