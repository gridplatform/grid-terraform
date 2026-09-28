/**
 * Amazon Web Services — service-discovery
 *
 * Provisions Service Discovery via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "service-discovery"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
