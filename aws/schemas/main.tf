/**
 * Amazon Web Services — schemas
 *
 * Provisions Schemas via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "schemas"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
