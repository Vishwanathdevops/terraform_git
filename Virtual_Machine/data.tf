data "azurerm_network_interface" "main1" {
  name                = "vish-nic1"
  resource_group_name = "Vishkro1"
}
# data "azurerm_network_interface" "main2" {
#   name                = "vish-nic2"
#   resource_group_name = "Vishkro1"
# }   

# data "azurerm_network_interface" "main3" {
#   name                = "vish-nic3"
#   resource_group_name = "Vishkro1"
# }

data "azurerm_network_interface" "main3" {
  for_each = var.var-vm2
  name                = each.value.nic
  resource_group_name = each.value.resource_group_name
}