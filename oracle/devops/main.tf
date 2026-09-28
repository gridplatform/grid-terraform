/**
 * Oracle Cloud Infrastructure (OCI) — devops
 *
 * Provisions Devops via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "devops"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
