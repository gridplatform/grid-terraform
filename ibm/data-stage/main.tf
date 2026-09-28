/**
 * IBM Cloud — data-stage
 *
 * Provisions Data Stage via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "data-stage"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
