/**
 * Oracle Cloud Infrastructure (OCI) — data-science
 *
 * Provisions Data Science via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "data-science"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
