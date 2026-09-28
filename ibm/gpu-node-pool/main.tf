/**
 * IBM Cloud — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the ibm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "ibm"
    module      = "gpu-node-pool"
    tf_provider = "ibm"
    note        = "module placeholder"
  }
}
