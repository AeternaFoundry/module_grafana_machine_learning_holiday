variable "machine_learning_holidays" {
  description = <<EOT
Map of machine_learning_holidays, attributes below
Required:
    - name
Optional:
    - description
    - ical_timezone
    - ical_url
    - custom_periods (block):
        - end_time (required)
        - name (optional)
        - start_time (required)
EOT

  type = map(object({
    name          = string
    description   = optional(string)
    ical_timezone = optional(string)
    ical_url      = optional(string)
    custom_periods = optional(list(object({
      end_time   = string
      name       = optional(string)
      start_time = string
    })))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

