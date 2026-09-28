/**
 * IBM Cloud — continuous-delivery
 *
 * Provisions Continuous Delivery via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "continuous-delivery"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
