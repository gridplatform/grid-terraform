/**
 * Oracle Cloud Infrastructure (OCI) — streaming
 *
 * Provisions Streaming via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "streaming"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
