/**
 * Amazon Web Services — rekognition
 *
 * Provisions Rekognition via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "rekognition"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
