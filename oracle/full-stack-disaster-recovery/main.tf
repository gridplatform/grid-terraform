/**
 * Oracle Cloud Infrastructure (OCI) — full-stack-disaster-recovery
 *
 * Provisions Full Stack Disaster Recovery via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "full-stack-disaster-recovery"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
