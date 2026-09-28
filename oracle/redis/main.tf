/**
 * Oracle Cloud Infrastructure (OCI) — redis
 *
 * Provisions Redis via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "redis"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
