/**
 * Amazon Web Services — ray-cluster
 *
 * Provisions Ray Cluster via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "ray-cluster"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
