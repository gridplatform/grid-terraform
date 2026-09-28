/**
 * Amazon Web Services — medialive
 *
 * Provisions Medialive via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "medialive"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
