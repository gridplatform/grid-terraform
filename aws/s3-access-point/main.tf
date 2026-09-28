/**
 * Amazon Web Services — s3-access-point
 *
 * Provisions S3 Access Point via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "s3-access-point"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
