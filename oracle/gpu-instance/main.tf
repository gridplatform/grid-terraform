/**
 * Oracle Cloud Infrastructure (OCI) — gpu-instance
 *
 * Provisions Gpu Instance via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "gpu-instance"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
