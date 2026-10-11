output "extended_locations_lookup_id" {
  description = "Map of id values across all extended_locations_lookup, keyed the same as var.extended_locations_lookup"
  value       = { for k, v in data.azurerm_extended_locations.extended_locations_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "extended_locations_lookup_extended_locations" {
  description = "Map of extended_locations values across all extended_locations_lookup, keyed the same as var.extended_locations_lookup"
  value       = { for k, v in data.azurerm_extended_locations.extended_locations_lookup : k => v.extended_locations if v.extended_locations != null && length(v.extended_locations) > 0 }
}
output "extended_locations_lookup_location" {
  description = "Map of location values across all extended_locations_lookup, keyed the same as var.extended_locations_lookup"
  value       = { for k, v in data.azurerm_extended_locations.extended_locations_lookup : k => v.location if v.location != null && length(v.location) > 0 }
}

