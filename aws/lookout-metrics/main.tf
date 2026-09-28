/**
 * Amazon Web Services — lookout-metrics
 *
 * Provisions Lookout Metrics via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "lookout-metrics"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
