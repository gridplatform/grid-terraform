/**
 * IBM Cloud — network
 *
 * Provisions Network via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "network"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
