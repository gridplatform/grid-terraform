/**
 * Oracle Cloud Infrastructure (OCI) — digital-assistant
 *
 * Provisions Digital Assistant via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "digital-assistant"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
