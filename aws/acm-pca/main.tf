/**
 * Amazon Web Services — acm-pca
 *
 * Provisions Acm Pca via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "acm-pca"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
