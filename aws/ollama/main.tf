/**
 * Amazon Web Services — ollama
 *
 * Provisions Ollama via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "ollama"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
