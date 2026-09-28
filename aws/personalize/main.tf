/**
 * Amazon Web Services — personalize
 *
 * Provisions Personalize via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "personalize"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
