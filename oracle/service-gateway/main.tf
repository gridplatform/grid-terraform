/**
 * Oracle Cloud Infrastructure (OCI) — service-gateway
 *
 * Provisions Service Gateway via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "service-gateway"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
