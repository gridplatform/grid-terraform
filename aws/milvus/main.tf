/**
 * Amazon Web Services — milvus
 *
 * Provisions Milvus via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "milvus"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
