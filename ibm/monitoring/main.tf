/**
 * IBM Cloud — monitoring
 *
 * Provisions Monitoring via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "monitoring"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
