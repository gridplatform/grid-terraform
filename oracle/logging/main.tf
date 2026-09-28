/**
 * Oracle Cloud Infrastructure (OCI) — logging
 *
 * Provisions Logging via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "logging"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
