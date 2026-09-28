/**
 * Amazon Web Services — application-migration
 *
 * Provisions Application Migration via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "application-migration"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
