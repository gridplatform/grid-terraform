/**
 * Amazon Web Services — fraud-detector
 *
 * Provisions Fraud Detector via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "fraud-detector"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
