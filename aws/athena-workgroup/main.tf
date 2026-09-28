/**
 * Amazon Web Services — athena-workgroup
 *
 * Provisions Athena Workgroup via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "athena-workgroup"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
