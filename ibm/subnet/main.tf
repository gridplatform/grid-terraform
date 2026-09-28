/**
 * IBM Cloud — subnet
 *
 * Provisions Subnet via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "subnet"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
