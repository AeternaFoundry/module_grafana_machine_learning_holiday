output "machine_learning_holidays_id" {
  description = "Map of id values across all machine_learning_holidays, keyed the same as var.machine_learning_holidays except keys with no id are omitted"
  value       = { for k, v in grafana_machine_learning_holiday.machine_learning_holidays : k => v.id if v.id != null && length(v.id) > 0 }
}
output "machine_learning_holidays_custom_periods" {
  description = "Map of custom_periods values across all machine_learning_holidays, keyed the same as var.machine_learning_holidays except keys with no custom_periods are omitted"
  value       = { for k, v in grafana_machine_learning_holiday.machine_learning_holidays : k => v.custom_periods if v.custom_periods != null && length(v.custom_periods) > 0 }
}
output "machine_learning_holidays_description" {
  description = "Map of description values across all machine_learning_holidays, keyed the same as var.machine_learning_holidays except keys with no description are omitted"
  value       = { for k, v in grafana_machine_learning_holiday.machine_learning_holidays : k => v.description if v.description != null && length(v.description) > 0 }
}
output "machine_learning_holidays_ical_timezone" {
  description = "Map of ical_timezone values across all machine_learning_holidays, keyed the same as var.machine_learning_holidays except keys with no ical_timezone are omitted"
  value       = { for k, v in grafana_machine_learning_holiday.machine_learning_holidays : k => v.ical_timezone if v.ical_timezone != null && length(v.ical_timezone) > 0 }
}
output "machine_learning_holidays_ical_url" {
  description = "Map of ical_url values across all machine_learning_holidays, keyed the same as var.machine_learning_holidays except keys with no ical_url are omitted"
  value       = { for k, v in grafana_machine_learning_holiday.machine_learning_holidays : k => v.ical_url if v.ical_url != null && length(v.ical_url) > 0 }
}
output "machine_learning_holidays_name" {
  description = "Map of name values across all machine_learning_holidays, keyed the same as var.machine_learning_holidays except keys with no name are omitted"
  value       = { for k, v in grafana_machine_learning_holiday.machine_learning_holidays : k => v.name if v.name != null && length(v.name) > 0 }
}

