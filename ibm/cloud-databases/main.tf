/**
 * IBM Cloud — cloud-databases
 *
 * Provisions Cloud Databases via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "cloud-databases"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
