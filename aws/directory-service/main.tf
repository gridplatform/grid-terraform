/**
 * Amazon Web Services — directory-service
 *
 * Provisions Directory Service via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "directory-service"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
