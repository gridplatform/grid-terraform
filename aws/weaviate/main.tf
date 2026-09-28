/**
 * Amazon Web Services — weaviate
 *
 * Provisions Weaviate via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "weaviate"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
