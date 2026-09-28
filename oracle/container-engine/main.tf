/**
 * Oracle Cloud Infrastructure (OCI) — container-engine
 *
 * Provisions Container Engine via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "container-engine"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
