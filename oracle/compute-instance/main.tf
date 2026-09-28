/**
 * Oracle Cloud Infrastructure (OCI) — compute-instance
 *
 * Provisions Compute Instance via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "compute-instance"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
