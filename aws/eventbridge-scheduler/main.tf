/**
 * Amazon Web Services — eventbridge-scheduler
 *
 * Provisions Eventbridge Scheduler via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "eventbridge-scheduler"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
