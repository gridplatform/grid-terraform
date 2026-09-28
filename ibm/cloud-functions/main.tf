/**
 * IBM Cloud — cloud-functions
 *
 * Provisions Cloud Functions via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "cloud-functions"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
