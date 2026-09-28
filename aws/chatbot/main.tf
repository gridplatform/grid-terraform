/**
 * Amazon Web Services — chatbot
 *
 * Provisions Chatbot via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "chatbot"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
