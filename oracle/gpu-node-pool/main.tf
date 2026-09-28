/**
 * Oracle Cloud Infrastructure (OCI) — gpu-node-pool
 *
 * Provisions Gpu Node Pool via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "gpu-node-pool"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
