/**
 * IBM Cloud — appid
 *
 * Provisions Appid via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "appid"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
