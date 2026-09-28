/**
 * Amazon Web Services — mlflow
 *
 * Provisions Mlflow via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "mlflow"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
