/**
 * Google Cloud — milvus
 *
 * Provisions Milvus via the google Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "gcp"
    module      = "milvus"
    tf_provider = "google"
    note        = "module placeholder"
  }
}
