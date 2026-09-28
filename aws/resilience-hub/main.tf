/**
 * Amazon Web Services — resilience-hub
 *
 * Provisions Resilience Hub via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "resilience-hub"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
