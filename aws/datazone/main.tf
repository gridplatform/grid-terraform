/**
 * Amazon Web Services — datazone
 *
 * Provisions Datazone via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "datazone"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
