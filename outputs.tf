output "user_mappings_id" {
  description = "Map of id values across all user_mappings, keyed the same as var.user_mappings"
  value       = { for k, v in postgresql_user_mapping.user_mappings : k => v.id }
}
output "user_mappings_options" {
  description = "Map of options values across all user_mappings, keyed the same as var.user_mappings"
  value       = { for k, v in postgresql_user_mapping.user_mappings : k => v.options }
}
output "user_mappings_server_name" {
  description = "Map of server_name values across all user_mappings, keyed the same as var.user_mappings"
  value       = { for k, v in postgresql_user_mapping.user_mappings : k => v.server_name }
}
output "user_mappings_user_name" {
  description = "Map of user_name values across all user_mappings, keyed the same as var.user_mappings"
  value       = { for k, v in postgresql_user_mapping.user_mappings : k => v.user_name }
}

