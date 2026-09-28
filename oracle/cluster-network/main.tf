/**
 * Oracle Cloud Infrastructure (OCI) — cluster-network
 *
 * Provisions Cluster Network via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "cluster-network"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
