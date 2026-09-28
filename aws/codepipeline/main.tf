/**
 * Amazon Web Services — codepipeline
 *
 * Provisions Codepipeline via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "codepipeline"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
