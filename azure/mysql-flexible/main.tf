/**
 * Microsoft Azure — mysql-flexible
 *
 * Provisions Mysql Flexible via the terraform Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "mysql-flexible"
    tf_provider = "terraform"
    note        = "module placeholder"
  }
}
