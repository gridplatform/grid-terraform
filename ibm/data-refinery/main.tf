/**
 * IBM Cloud — data-refinery
 *
 * Provisions Data Refinery via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "data-refinery"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
