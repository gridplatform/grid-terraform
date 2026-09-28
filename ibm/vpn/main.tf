/**
 * IBM Cloud — vpn
 *
 * Provisions Vpn via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "vpn"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
