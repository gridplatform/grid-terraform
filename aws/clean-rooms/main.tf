/**
 * Amazon Web Services — clean-rooms
 *
 * Provisions Clean Rooms via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "clean-rooms"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
