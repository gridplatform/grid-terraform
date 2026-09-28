/**
 * Amazon Web Services — managed-prometheus
 *
 * Provisions Managed Prometheus via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "managed-prometheus"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
