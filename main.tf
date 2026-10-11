data "azurerm_extended_locations" "extended_locations_lookup" {
  for_each = var.extended_locations_lookup

  location = each.value.location
}

