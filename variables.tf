variable "extended_locations_lookup" {
  description = <<EOT
Map of extended_locations_lookup, attributes below
Required:
    - location
EOT

  type = map(object({
    location = string
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

