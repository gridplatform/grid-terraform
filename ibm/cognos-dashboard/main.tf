/**
 * IBM Cloud — cognos-dashboard
 *
 * Provisions Cognos Dashboard via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "cognos-dashboard"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
