/**
 * Amazon Web Services — managed-grafana
 *
 * Provisions Managed Grafana via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "managed-grafana"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
