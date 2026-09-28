/**
 * Oracle Cloud Infrastructure (OCI) — instance-pool
 *
 * Provisions Instance Pool via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "instance-pool"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
