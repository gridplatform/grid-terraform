/**
 * Amazon Web Services — glue-crawler
 *
 * Provisions Glue Crawler via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "glue-crawler"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
