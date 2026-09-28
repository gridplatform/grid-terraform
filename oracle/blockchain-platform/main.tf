/**
 * Oracle Cloud Infrastructure (OCI) — blockchain-platform
 *
 * Provisions Blockchain Platform via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "blockchain-platform"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
