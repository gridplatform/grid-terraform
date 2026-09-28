/**
 * Oracle Cloud Infrastructure (OCI) — queue-builder
 *
 * Provisions Queue Builder via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "queue-builder"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
