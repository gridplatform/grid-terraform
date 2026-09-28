/**
 * Oracle Cloud Infrastructure (OCI) — email-delivery
 *
 * Provisions Email Delivery via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "email-delivery"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
