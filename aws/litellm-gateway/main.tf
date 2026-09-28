/**
 * Amazon Web Services — litellm-gateway
 *
 * Provisions Litellm Gateway via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "litellm-gateway"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
