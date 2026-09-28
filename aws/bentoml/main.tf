/**
 * Amazon Web Services — bentoml
 *
 * Provisions Bentoml via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "bentoml"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
