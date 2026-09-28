/**
 * Amazon Web Services — elastic-beanstalk
 *
 * Provisions Elastic Beanstalk via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "elastic-beanstalk"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
