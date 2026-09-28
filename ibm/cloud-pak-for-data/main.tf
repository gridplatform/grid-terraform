/**
 * IBM Cloud — cloud-pak-for-data
 *
 * Provisions Cloud Pak For Data via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "cloud-pak-for-data"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
