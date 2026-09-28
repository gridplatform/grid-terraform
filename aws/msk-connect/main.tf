/**
 * Amazon Web Services — msk-connect
 *
 * Provisions Msk Connect via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "msk-connect"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
