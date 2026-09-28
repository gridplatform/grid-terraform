/**
 * Amazon Web Services — parallelcluster
 *
 * Provisions Parallelcluster via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "parallelcluster"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
