/**
 * IBM Cloud — certificate-manager
 *
 * Provisions Certificate Manager via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "certificate-manager"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
