/**
 * Oracle Cloud Infrastructure (OCI) — queue
 *
 * Provisions Queue via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "queue"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
