resource "grafana_machine_learning_holiday" "machine_learning_holidays" {
  for_each = var.machine_learning_holidays

  name          = each.value.name
  description   = each.value.description
  ical_timezone = each.value.ical_timezone
  ical_url      = each.value.ical_url

  dynamic "custom_periods" {
    for_each = each.value.custom_periods != null ? each.value.custom_periods : []
    content {
      end_time   = custom_periods.value.end_time
      name       = custom_periods.value.name
      start_time = custom_periods.value.start_time
    }
  }
}

