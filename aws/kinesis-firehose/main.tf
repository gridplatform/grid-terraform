/**
 * Amazon Web Services — kinesis-firehose
 *
 * Provisions Kinesis Firehose via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "kinesis-firehose"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
