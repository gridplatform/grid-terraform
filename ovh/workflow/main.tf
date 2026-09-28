/**
 * OVHcloud — workflow
 *
 * Provisions Workflow via the ovh Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ovh"
    module      = "workflow"
    tf_provider = "ovh"
    note        = "module placeholder"
  }
}
