/**
 * Oracle Cloud Infrastructure (OCI) — nsg
 *
 * Provisions Nsg via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "nsg"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
