/**
 * Amazon Web Services — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "gpu-node-pool"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
