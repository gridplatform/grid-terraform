/**
 * Oracle Cloud Infrastructure (OCI) — service-mesh
 *
 * Provisions Service Mesh via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "service-mesh"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
