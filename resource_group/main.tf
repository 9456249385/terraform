variable "rg" {
type = map(any)
  

}


resource "azurerm_resource_group" "resource_group" {
  for_each = var.rg
  name     = each.value.name
  location = each.value.location
  
}