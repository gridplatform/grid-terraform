/**
 * Oracle Cloud Infrastructure (OCI) — events
 *
 * Provisions Events via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "events"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
