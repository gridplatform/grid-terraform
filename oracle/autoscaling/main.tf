/**
 * Oracle Cloud Infrastructure (OCI) — autoscaling
 *
 * Provisions Autoscaling via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "autoscaling"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
