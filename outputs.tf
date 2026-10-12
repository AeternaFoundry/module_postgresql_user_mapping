output "user_mappings_id" {
  description = "Map of id values across all user_mappings, keyed the same as var.user_mappings except keys with no id are omitted"
  value       = { for k, v in postgresql_user_mapping.user_mappings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_mappings_options" {
  description = "Map of options values across all user_mappings, keyed the same as var.user_mappings except keys with no options are omitted"
  value       = { for k, v in postgresql_user_mapping.user_mappings : k => v.options if v.options != null && length(v.options) > 0 }
}
output "user_mappings_server_name" {
  description = "Map of server_name values across all user_mappings, keyed the same as var.user_mappings except keys with no server_name are omitted"
  value       = { for k, v in postgresql_user_mapping.user_mappings : k => v.server_name if v.server_name != null && length(v.server_name) > 0 }
}
output "user_mappings_user_name" {
  description = "Map of user_name values across all user_mappings, keyed the same as var.user_mappings except keys with no user_name are omitted"
  value       = { for k, v in postgresql_user_mapping.user_mappings : k => v.user_name if v.user_name != null && length(v.user_name) > 0 }
}

