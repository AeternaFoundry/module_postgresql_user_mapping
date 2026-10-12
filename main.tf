resource "postgresql_user_mapping" "user_mappings" {
  for_each = var.user_mappings

  server_name = each.value.server_name
  user_name   = each.value.user_name
  options     = each.value.options
}

