
# Create a resource group
resource "azurerm_resource_group" "rg" {
  name     = "punit-rg"
  location = "West Europe"
}
