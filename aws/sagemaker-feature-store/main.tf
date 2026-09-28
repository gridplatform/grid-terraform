/**
 * Amazon Web Services — sagemaker-feature-store
 *
 * Provisions Sagemaker Feature Store via the aws Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "aws"
    module      = "sagemaker-feature-store"
    tf_provider = "aws"
    note        = "module placeholder"
  }
}
