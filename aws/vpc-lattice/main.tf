/**
 * Amazon Web Services — vpc-lattice
 *
 * Provisions Vpc Lattice via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "vpc-lattice"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
