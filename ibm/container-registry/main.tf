/**
 * IBM Cloud — container-registry
 *
 * Provisions Container Registry via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "container-registry"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
