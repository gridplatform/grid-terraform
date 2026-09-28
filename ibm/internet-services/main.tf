/**
 * IBM Cloud — internet-services
 *
 * Provisions Internet Services via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "internet-services"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
