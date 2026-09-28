/**
 * Microsoft Azure — timeseries-insights
 *
 * Provisions Timeseries Insights via the azurerm Terraform provider.
 */

resource "terraform_data" "scaffold" {
  input = {
    cloud       = "azure"
    module      = "timeseries-insights"
    tf_provider = "azurerm"
    note        = "module placeholder"
  }
}
