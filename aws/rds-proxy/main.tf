/**
 * Amazon Web Services — rds-proxy
 *
 * Provisions Rds Proxy via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "rds-proxy"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
