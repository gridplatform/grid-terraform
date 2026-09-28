/**
 * Yotta — gpu-instance
 *
 * Provisions Gpu Instance via the cloudstack Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "yotta"
    module      = "gpu-instance"
    tf_provider = "cloudstack"
    note        = "module placeholder"
  }
}
