/**
 * IBM Cloud — transit-gateway
 *
 * Provisions Transit Gateway via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "transit-gateway"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
