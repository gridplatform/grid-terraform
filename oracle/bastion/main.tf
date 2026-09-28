/**
 * Oracle Cloud Infrastructure (OCI) — bastion
 *
 * Provisions Bastion via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "bastion"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
