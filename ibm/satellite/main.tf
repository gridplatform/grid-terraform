/**
 * IBM Cloud — satellite
 *
 * Provisions Satellite via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "satellite"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
