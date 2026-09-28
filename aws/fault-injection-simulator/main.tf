/**
 * Amazon Web Services — fault-injection-simulator
 *
 * Provisions Fault Injection Simulator via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "fault-injection-simulator"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
