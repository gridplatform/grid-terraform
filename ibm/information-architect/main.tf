/**
 * IBM Cloud — information-architect
 *
 * Provisions Information Architect via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "information-architect"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
