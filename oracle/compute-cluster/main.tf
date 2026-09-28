/**
 * Oracle Cloud Infrastructure (OCI) — compute-cluster
 *
 * Provisions Compute Cluster via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "compute-cluster"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
