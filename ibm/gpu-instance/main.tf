/**
 * IBM Cloud — gpu-instance
 *
 * Provisions Gpu Instance via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "gpu-instance"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
