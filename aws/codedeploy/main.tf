/**
 * Amazon Web Services — codedeploy
 *
 * Provisions Codedeploy via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "codedeploy"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
