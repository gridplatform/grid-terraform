/**
 * Amazon Web Services — bedrock-prompt
 *
 * Provisions Bedrock Prompt via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "bedrock-prompt"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
