/**
 * Oracle Cloud Infrastructure (OCI) — milvus
 *
 * Provisions Milvus via the oci Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "oracle"
    module      = "milvus"
    tf_provider = "oci"
    note        = "module placeholder"
  }
}
