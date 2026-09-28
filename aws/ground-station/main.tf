/**
 * Amazon Web Services — ground-station
 *
 * Provisions Ground Station via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "ground-station"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
