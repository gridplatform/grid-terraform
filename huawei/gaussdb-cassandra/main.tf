/**
 * Huawei Cloud — gaussdb-cassandra
 *
 * Provisions Gaussdb Cassandra via the huaweicloud Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "huawei"
    module      = "gaussdb-cassandra"
    tf_provider = "huaweicloud"
    note        = "module placeholder"
  }
}
