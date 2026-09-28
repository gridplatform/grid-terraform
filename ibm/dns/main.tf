/**
 * IBM Cloud — dns
 *
 * Provisions Dns via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "dns"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
