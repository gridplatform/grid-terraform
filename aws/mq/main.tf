/**
 * Amazon Web Services — mq
 *
 * Provisions Mq via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "mq"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
