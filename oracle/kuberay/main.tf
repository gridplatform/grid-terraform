/**
 * Oracle Cloud Infrastructure (OCI) — kuberay
 *
 * Provisions Kuberay via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "kuberay"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
