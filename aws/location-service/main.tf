/**
 * Amazon Web Services — location-service
 *
 * Provisions Location Service via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "location-service"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
