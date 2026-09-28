/**
 * Oracle Cloud Infrastructure (OCI) — analytics
 *
 * Provisions Analytics via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "analytics"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
