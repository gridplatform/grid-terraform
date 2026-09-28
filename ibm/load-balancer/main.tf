/**
 * IBM Cloud — load-balancer
 *
 * Provisions Load Balancer via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "load-balancer"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
