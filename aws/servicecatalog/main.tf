/**
 * Amazon Web Services — servicecatalog
 *
 * Provisions Servicecatalog via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "servicecatalog"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
