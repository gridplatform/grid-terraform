/**
 * IBM Cloud — openshift-on-ibm
 *
 * Provisions Openshift On Ibm via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "openshift-on-ibm"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
