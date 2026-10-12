variable "user_mappings" {
  description = <<EOT
Map of user_mappings, attributes below
Required:
    - server_name
    - user_name
Optional:
    - options
EOT

  type = map(object({
    server_name = string
    user_name   = string
    options     = optional(map(string))
  }))
}

