/**
 * Oracle Cloud Infrastructure (OCI) — container-instances
 *
 * Provisions Container Instances via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "container-instances"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
