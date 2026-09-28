/**
 * Huawei Cloud — gaussdb-opengauss
 *
 * Provisions Gaussdb Opengauss via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "gaussdb-opengauss"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
