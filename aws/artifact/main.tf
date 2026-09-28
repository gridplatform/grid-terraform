/**
 * Amazon Web Services — artifact
 *
 * Provisions Artifact via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "artifact"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
