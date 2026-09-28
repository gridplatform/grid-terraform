/**
 * Oracle Cloud Infrastructure (OCI) — iam
 *
 * Provisions Iam via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "iam"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
